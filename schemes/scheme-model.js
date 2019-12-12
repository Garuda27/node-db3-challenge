function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id })
        .first();
}

function add(schemes) {
    return db('schemes')
        .insert(scheme)
        .then(ids => {
            const [id] = ids;

            return findById(id);
        })
}

function update(changes, id) {
    return db('schemes')
        .where({ id })
        .update(changes)
        .then(post => {
            return findById(post)
        })
}

function remove(id) {
    return db('schemes')
        .where({ id })
        .del();
}