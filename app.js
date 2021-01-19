const express=  require('express');
const app = express()
const cors = require('cors');
    
app.use(cors());
app.use(express.json());

app.get('/Produtos',cors(), (req, res, next) => {
    const mysql = require('mysql');
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'fullstack'
    });
    connection.query("select * from produtos", (error, result) => {
        
        // console.log(res.json({ dados: result }))
        res.json(  result)
    })
    
})
app.get('/Formulario',cors(), (req, res, next) => {
    const mysql = require('mysql');
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'fullstack'
    });
    connection.query("SELECT * FROM pedido JOIN produtos ON pedido.idprodutos = produtos.idprodutos;", (error, result) => {
        
        // console.log(res.json({ dados: result }))
        res.json(  result)
    })
    
})


app.post('/Formulario', (req, res) => {
    const mysql = require('mysql');
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'fullstack'
    });

   
    let dados = [];

  
    dados.push({
        nome: req.body.nome, 
        email: req.body.email,
        telefone: req.body.telefone,
        idprodutos: req.body.idprodutos,
        quantidade: req.body.quantidade
        
    })
    // colocando os dados recebidos dentro da nossa tabela
    
    connection.query("INSERT INTO pedido SET?", dados, () => {
        dados = []
        return res.json({ mensagem: "Dados enviados com sucesso" })
        
    })

});


app.listen(3000, ()=>{
    console.log('Servidor ativo');
})
