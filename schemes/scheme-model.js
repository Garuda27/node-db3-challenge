function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id })
        .first();
}

function add(user) {
}

function update(changes, id) {
}

function remove(id) {
}