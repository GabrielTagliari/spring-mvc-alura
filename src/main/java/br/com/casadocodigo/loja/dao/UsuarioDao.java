package br.com.casadocodigo.loja.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.casadocodigo.loja.model.Usuario;

@Repository
public class UsuarioDao implements UserDetailsService {

	@PersistenceContext
	private EntityManager em;
	
	public Usuario loadUserByUsername(String email) {
		String query = "select u from Usuario u where u.email = :email";
		List<Usuario> usuarios = em.createQuery(query, Usuario.class)
				.setParameter("email", email).getResultList();
		
		if(usuarios.isEmpty()) {
			throw new UsernameNotFoundException("Usuário com e-mail " + email + " não foi encontrado");
		}
		
		return usuarios.get(0);
	}
	
}
