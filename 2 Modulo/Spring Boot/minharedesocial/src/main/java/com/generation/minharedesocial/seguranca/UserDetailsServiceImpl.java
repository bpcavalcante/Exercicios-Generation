package com.generation.minharedesocial.seguranca;

import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.generation.minharedesocial.model.Usuario;
import com.generation.minharedesocial.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	private UsuarioRepository userRepository;
	
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException{
		Optional<Usuario> user = userRepository.findByUsuario(userName);
		
		user.orElseThrow(() -> new UsernameNotFoundException(userName + "not found"));
		
		return user.map(UserDetailsImpl ::new).get();
	} 
	
}
