package br.com.casadocodigo.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.model.Produto;

@Repository
@Transactional
public class ProdutoDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public void gravar(Produto produto) {
		em.persist(produto);
	}

	public List<Produto> listar() {
		return em.createQuery("select p from Produto p", Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		StringBuffer query = new StringBuffer();
		query.append("select distinct(p) from Produto p join fetch p.precos where p.id = :id");
		return em.createQuery(query.toString(), Produto.class).setParameter("id", id).getSingleResult();
	}
}
