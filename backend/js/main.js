import executeQuery from "./db.js";
import readCSV from "./read.js";

await process.loadEnvFile('.env') // "node --env-file=.env ./js/main.js"

let fileContent = await readCSV('./csv/livros.csv');
fileContent.shift();

let query;
let param;

for (let row of fileContent) {
    row = row.split(';');

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
        row[2],
        row[0],
        row[1],
        row[4],
        row[3]
    ];

    await executeQuery(query, param);
};
