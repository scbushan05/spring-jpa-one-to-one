package in.bushansirgur.springjpa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.bushansirgur.springjpa.model.User;
import in.bushansirgur.springjpa.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public User get(String email, String password) {
		return userRepository.findByEmailAndPassword(email, password);
	}

	@Override
	public void save(User user) {
		userRepository.save(user);
	}

}
