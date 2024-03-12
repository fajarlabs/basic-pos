const fs = require('fs');
const connection = require('../config/mysql');

const {
  dbQuery,
  filterQueries,
  paginationQueries,
  sortQueries
} = require('../helper');

const allowedFields = ['id', 'otl_no_handphone', 'otl_nama', 'otl_nama_rpk', 'otl_email', 'otl_no_ktp', 'otl_file_ktp', 'otl_jalan_1', 'otl_jalan_1', 'otl_jalan_2', 'otl_blok_rumah', 'otl_no_rumah', 'otl_rt','otl_rw', 'otl_provinsi', 'otl_kota','otl_kecamatan', 'otl_negara', 'otl_kode_pos'];

const selectAllOutlets = (urlQueries) => {
  const queryParams =
    filterQueries(urlQueries, allowedFields, 'o.') +
    sortQueries(urlQueries, 'o.') +
    paginationQueries(urlQueries);
  const query = `
    SELECT
      o.id,
      o.otl_no_handphone,
      o.otl_nama,
      o.otl_nama_rpk,
      o.otl_email,
      o.otl_no_ktp,
      o.otl_file_ktp,
      o.otl_jalan_1,
      o.otl_jalan_2,
      o.otl_blok_rumah,
      o.otl_no_rumah,
      o.otl_rt,
      o.otl_rw,
      o.otl_provinsi,
      o.otl_kota,
      o.otl_kecamatan,
      o.otl_negara,
      o.otl_kode_pos,
      o.modify_time,
      o.create_time
    FROM outlets as o
    ${queryParams}`;
  return new Promise((resolve, reject) => {
    connection
      .query(query, (error, result) => {
        if (!error) {
          resolve(result);
        }
      })
      .on('error', error => {
        reject(new Error(error));
      });
  });
};

const countOutlets = (urlQueries) => {
  const queryParams = filterQueries(urlQueries, allowedFields) + sortQueries(urlQueries) + paginationQueries(urlQueries);
  const query = `SELECT COUNT(*) AS total_items FROM outlets${queryParams}`;
  return new Promise((resolve, reject) => {
    connection.query(query, (error, result) => {
      if(!error) {
        resolve(result[0]);
      }
    }).on('error', (error) => {
      reject(new Error(error));
    });
  });
};

const selectDataOutlet = (id) => {
  const query = `
  SELECT
    o.id,
    o.otl_no_handphone,
    o.otl_nama,
    o.otl_nama_rpk,
    o.otl_email,
    o.otl_no_ktp,
    o.otl_file_ktp,
    o.otl_jalan_1,
    o.otl_jalan_2,
    o.otl_blok_rumah,
    o.otl_no_rumah,
    o.otl_rt,
    o.otl_rw,
    o.otl_provinsi,
    o.otl_kota,
    o.otl_kecamatan,
    o.otl_negara,
    o.otl_kode_pos,
    o.modify_time,
    o.create_time
  FROM outlets as o
  WHERE id = ?`;
  return new Promise((resolve, reject) => {
    connection
      .query(query, [id], (error, result) => {
        if (!error) {
          resolve(result[0]);
        }
      })
      .on('error', error => {
        reject(new Error(error));
      });
  });
};

const insertDataOutlet = (data) => {
  const query = `INSERT INTO outlets SET ?`;
  console.log(query)
  return new Promise((resolve, reject) => {
    connection
      .query(query, [data], (error, result) => {
        if (!error) {
          resolve(result);
        }
      })
      .on('error', error => {
        reject(new Error(error));
      });
  });
};

const selectOutletImage = (id) => {
  const query = `SELECT otl_file_ktp FROM outlets WHERE id = ?`;
  return new Promise((resolve, reject) => {
    connection.query(query, [id], (error, result) => {
      if(!error) {
        resolve(result[0]);
      }
    }).on('error', (error) => {
      reject(new Error(error));
    });
  });
};

const updateDataOutlet = (data, id) => {
  console.log(data);
  const query = `UPDATE outlets SET ? WHERE id = ?`;
  const result = selectOutletImage(id).then(res => {
    const { image } = res;
    if(image && image !== '' && data.image && fs.existsSync(image)) {
      fs.unlink(image, (error) => {
        if(error) throw new Error(error);
      });
    }
    return dbQuery(connection, query, [data, id]).catch(error => {
      throw new Error(error);
    });
  }).catch(error => {
    throw new Error(error);
  });
  return result;
};

const deleteDataOutlet = (id) => {
  const query = `DELETE FROM outlets WHERE id = ?`;
  const result = selectOutletImage(id).then(res => {
    const { image } = res;
    if(image && image !== '' && fs.existsSync(image)) {
      fs.unlink(image, (error) => {
        if(error) throw new Error(error);
      });
    }
    return dbQuery(connection, query, [id]).catch(error => {
      throw new Error(error);
    });
  }).catch(error => {
    throw new Error(error);
  });
  return result;
};

const checkNoHp = (match) => {
  const query = `SELECT otl_no_handphone FROM outlets WHERE otl_no_handphone = ?`;
  return new Promise((resolve, reject) => {
    connection
      .query(query, [match], (error, result) => {
        if (!error && result[0]) {
          const {no_hp} = result[0];
          if (no_hp === match) {
            resolve(true);
          } else {
            resolve(false);
          }
        } else {
          resolve(false);
        }
      })
      .on('error', error => {
        reject(error);
      });
  });
};

const checkEmail = (match) => {
  const query = `SELECT otl_email FROM outlets WHERE otl_email = ?`;
  return new Promise((resolve, reject) => {
    connection
      .query(query, [match], (error, result) => {
        if (!error && result[0]) {
          const {email} = result[0];
          if (email === match) {
            resolve(true);
          } else {
            resolve(false);
          }
        } else {
          resolve(false);
        }
      })
      .on('error', error => {
        reject(error);
      });
  });
};

const selectIdOutlet = (field, match) => {
  const query = `SELECT id FROM outlets WHERE ${field} = ?`;
  return new Promise((resolve, reject) => {
    connection
      .query(query, [match], (error, result) => {
        if (!error) {
          resolve(result[0]);
        }
      })
      .on('error', error => {
        reject(new Error(error));
      });
  });
};

module.exports = {
  selectAllOutlets,
  countOutlets,
  selectDataOutlet,
  insertDataOutlet,
  selectOutletImage,
  updateDataOutlet,
  deleteDataOutlet,
  selectIdOutlet,
  checkNoHp,
  checkEmail,
};
