package com.example.demo.service;


import com.example.demo.dto.UserDto;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;


@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder encoder;
    private final RoleService roleService;

    public Optional<User> getUserByEmail(String email) {
        Optional<User> mayBeUser = userRepository.findUserByEmail(email);
        return mayBeUser;
    }

    public int getAllUsersSize(int roleId) {
        return userRepository.findUserByRoleId(roleId).size();
    }


    public Optional<User> getUserById(int id) {
        return userRepository.findById(id);
    }


    public int save(UserDto userDto, int role) {

        return userRepository.save(User.builder()
                .fio(userDto.getFio())
                .email(userDto.getEmail())
                .password(encoder.encode(userDto.getPassword()))
                .phoneNumber(userDto.getPhoneNumber())
                .enabled(true)
                .role(roleService.getRoleById(role))
                .build()).getId();

    }


    public UserDto mapToUserDto(User user) {
        if (user != null) {
            return UserDto.builder()
                    .id(user.getId())
                    .fio(user.getFio())
                    .email(user.getEmail())
                    .password(user.getPassword())
                    .phoneNumber(user.getPhoneNumber())
                    .build();
        } else {
            return null;
        }
    }


}
