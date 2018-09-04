/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProdutoDAO;
import java.util.List;
import model.Produto;



/**
 *
 * @author Casa
 */
public class CtrlProduto {
   
    ProdutoDAO dao = null;
    
    public void cadastrar(Produto prod) throws Exception{
        dao = new ProdutoDAO();
        dao.create(prod);
    }
    
    public void editar(Produto prod) throws Exception{
        dao = new ProdutoDAO();
        dao.edit(prod);
    }
    
    public List<Produto> listarProdutos() throws Exception{
        dao = new ProdutoDAO();
        return dao.findProdutos();
    }
    
    public Produto buscarProduto(Long id) throws Exception{
        dao = new ProdutoDAO();
        return dao.findProduto(id);
    }
    
    public List<Produto> busca(String nome , int tipo){
        dao = new ProdutoDAO();
        return dao.findProdutos(nome,tipo);
    }
    

    
    
}
