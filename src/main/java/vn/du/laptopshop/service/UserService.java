package vn.du.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.du.laptopshop.domain.Role;
import vn.du.laptopshop.domain.User;
import vn.du.laptopshop.repository.RoleRepository;
import vn.du.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;

    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleSaveUser(User user) {
        User du = this.userRepository.save(user);
        return du;
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {

        return roleRepository.findByName(name);
    }
}
