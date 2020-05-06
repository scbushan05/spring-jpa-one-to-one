package in.bushansirgur.springjpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.bushansirgur.springjpa.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

	User findByEmailAndPassword(String email, String password);

}
