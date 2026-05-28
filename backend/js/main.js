import executeQuery from "./db.js";
import readCSV from "./read.js";

await process.loadEnvFile('.env'); // "node --env-file=.env ./js/main.js"


function normalize(text) {
    try {
        text = String(text.trim());
        text = text === "" ? null : text;
    }
    catch{
        text = null;
    }
    return text;
}

async function selectAuthor(row) {
    let query;
    let param;

    query = `
        SELECT 
            id,
            name
        FROM
            authors
        WHERE
            name = ?
    `;

    param = [
        normalize(row[1])
    ];

    try {
        let result = await executeQuery(query, param);
        return result[0][0].id;
    }
    catch{
        return null;
    }
}

async function insertAuthor(row) {
    let query;
    let param;

    query = `
        INSERT INTO authors (
            name
        ) VALUES (
            ?
        )
    `;

    param = [
        normalize(row[1])
    ];

    try {
        let result = await executeQuery(query, param);
        return result[0].insertId;
    }
    catch {
        return null;
    }
}

async function insertBooks(row, id_author) {
    let query;
    let param;

    query = `
        INSERT INTO books (
            isbn,
            title,
            author,
            year,
            pages
        ) VALUES (
            ?,
            ?,
            ?,
            ?,
            ?
        )
    `;

    param = [
        normalize(row[2]),
        normalize(row[0]),
        id_author,
        normalize(row[4]),
        normalize(row[3])
    ];

    await executeQuery(query, param);
}

async function main() {
    let idAuthor;

    let fileContent = await readCSV('./csv/livros.csv');
    fileContent.shift();
    
    for (let row of fileContent) {
        row = row.split(';');
    
        idAuthor = await selectAuthor(row)
        
        if (idAuthor) {
            await insertBooks(row, idAuthor);
        }
        else {
            idAuthor = await insertAuthor(row);
            await insertBooks(row, idAuthor);
        }
    };   
}

main();