using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Extensions.Configuration;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using Dapper;

namespace DemoPuc.Controllers
{
    public class Produto
    {
        public int Id { get; set; }
        public int CategoriaId { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public decimal Preco { get; set; }
    }

    [Route("api/[controller]")]
    [ApiController]
    public class ProdutoController : Controller
    {
        private IConfiguration _configuration;
        public ProdutoController(IConfiguration _configuration)
        {
            this._configuration = _configuration;
        }

        [HttpGet("ObterProdutoPorCategoriaId")]
        public async Task<List<Produto>> GetProdutoPorCategoriaId(int id)
        {

            List<Produto> listProduto = new List<Produto>();             
            await using (var connection = new MySqlConnection(_configuration.GetSection("ConnectionStrings:DataAccessMySqlProvider").Value))
            {
                var produtos = (await connection.QueryAsync<Produto>($"SELECT * FROM produto WHERE CategoriaId = {id}")).ToList();
                listProduto.AddRange(produtos);
            }     

            return listProduto;
        }
    }
}
