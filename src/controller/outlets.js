const bcrypt = require('bcrypt');

const {
    selectAllOutlets,
    countOutlets,
    selectDataOutlet,
    insertDataOutlet,
    selectOutletImage,
    updateDataOutlet,
    deleteDataOutlet,
    selectIdOutlet,
    checkNoHp,
    checkEmail
} = require('../models/outlets');

const {
    jsonResponse,
    jsonResponseWithPagination,
    jsonError,
    errorBadRequest
} = require('../helper');

const getAllOutlets = async (req, res) => {
    const urlQueries = req.query;
    const result = await selectAllOutlets(urlQueries).then(outlets => {
        return outlets.map(outlet => {
            return {
                otl_id: outlet.id,
                otl_no_handphone: outlet.otl_no_handphone,
                otl_nama: outlet.otl_nama,
                otl_nama_rpk: outlet.otl_nama_rpk,
                otl_email: outlet.otl_email,
                otl_no_ktp: outlet.otl_no_ktp,
                otl_file_ktp: `${process.env.PUBLIC_IMAGES}/${outlet.otl_file_ktp}`,
                otl_jalan_1: outlet.otl_jalan_1,
                otl_jalan_2: outlet.otl_jalan_2,
                otl_blok_rumah: outlet.otl_blok_rumah,
                otl_no_rumah: outlet.otl_no_rumah,
                otl_rt: outlet.otl_rt,
                otl_rw: outlet.otl_rw,
                otl_provinsi: outlet.otl_provinsi,
                otl_kota: outlet.otl_kota,
                otl_kecamatan: outlet.otl_kecamatan,
                otl_negara: outlet.otl_negara,
                otl_kode_pos: outlet.otl_kode_pos,
                modify_time: outlet.modify_time,
                create_time: outlet.create_time
            }
        });
    }).catch(console.log);
    delete urlQueries.page
    const count = await countOutlets(urlQueries)
        .catch(console.log);
    const limit = req.query.limit ? parseInt(req.query.limit) : 100;
    const page = req.query.page ? parseInt(req.query.page) : 1;
    const total_page = Math.ceil(count.total_items / limit);
    const pagination = {
        ...count,
        page,
        limit,
        total_page
    };
    return jsonResponseWithPagination(res, result, pagination);
};

const getOutlet = async (req, res) => {
    const {
        id
    } = req.params;
    const result = await selectDataOutlet(id).then(outlet => {
        return {
            otl_id: outlet.id,
            otl_no_handphone: outlet.otl_no_handphone,
            otl_nama: outlet.otl_nama,
            otl_nama_rpk: outlet.otl_nama_rpk,
            otl_email: outlet.otl_email,
            otl_no_ktp: outlet.otl_no_ktp,
            otl_file_ktp: `${process.env.PUBLIC_IMAGES}/${outlet.otl_file_ktp}`,
            otl_jalan_1: outlet.otl_jalan_1,
            otl_jalan_2: outlet.otl_jalan_2,
            otl_blok_rumah: outlet.otl_blok_rumah,
            otl_no_rumah: outlet.otl_no_rumah,
            otl_rt: outlet.otl_rt,
            otl_rw: outlet.otl_rw,
            otl_provinsi: outlet.otl_provinsi,
            otl_kota: outlet.otl_kota,
            otl_kecamatan: outlet.otl_kecamatan,
            otl_negara: outlet.otl_negara,
            otl_kode_pos: outlet.otl_kode_pos,
            modify_time: outlet.modify_time,
            create_time: outlet.create_time
        }
    }).catch(console.log);

    return jsonResponse(res, result);
};

const postOutlet = async (req, res) => {
    try {
        let data = req.body;
        if (data.otl_password && data.otl_password != '') {
            data.otl_password = await bcrypt.hash(data.otl_password, 10);
        }
        const query = await insertDataOutlet(data);
        delete data.otl_password;
        const id = query.insertId;
        const result = {
            id,
            ...data
        };
        return jsonResponse(res, result);
    } catch (error) {
        return jsonError(res, errorBadRequest);
    }
};

const putOutlet = async (req, res) => {
    try {
        let data = req.body;
        if (data.otl_password && data.otl_password != '') {
            data.otl_password = await bcrypt.hash(data.otl_password, 10);
        }
        const {
            id
        } = req.params;
        await selectDataOutlet(id).then(async category => {
            if (category.id) {
                await updateDataOutlet(data, id);
                delete data.otl_password;
                const result = {
                    id,
                    ...data
                };
                return jsonResponse(res, result);
            } else {
                return jsonError(res, errorBadRequest);
            }
        }).catch(() => {
            const error = {
                code: 400,
                message: `Data outlet does not exist!`
            };
            return jsonError(res, error);
        });
    } catch (error) {
        return jsonError(res, errorBadRequest);
    }
};

const deleteOutlet = async (req, res) => {
    try {
        const {
            id
        } = req.params;
        await selectDataOutlet(id).then(async outlet => {
            if (outlet.id) {
                await deleteDataOutlet(id);
                const result = {
                    ...outlet
                };
                return jsonResponse(res, result);
            } else {
                return jsonError(res, errorBadRequest);
            }
        }).catch(() => {
            const error = {
                code: 400,
                message: `Data outlet does not exist!`
            };
            return jsonError(res, error);
        });
    } catch (error) {
        return jsonError(res, errorBadRequest);
    }
};

module.exports = {
    getAllOutlets,
    getOutlet,
    postOutlet,
    putOutlet,
    deleteOutlet
};