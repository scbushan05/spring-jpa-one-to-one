package in.bushansirgur.springjpa.service;

import in.bushansirgur.springjpa.model.User;

public interface UserService {

	User get(String email, String password);

	void save(User user);

}
