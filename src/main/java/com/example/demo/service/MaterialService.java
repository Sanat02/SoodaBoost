package com.example.demo.service;

import com.example.demo.dto.MaterialDto;
import com.example.demo.model.Material;
import com.example.demo.repository.MaterialRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MaterialService {
    private final MaterialRepository materialRepository;

    public List<MaterialDto> getAllMaterials() {
        List<Material> materials = materialRepository.findAll();
        return materials.stream()
                .map(e -> MaterialDto.builder()
                        .id(e.getId())
                        .description(e.getDescription())
                        .filename(e.getFilename())
                        .build()
                ).collect(Collectors.toList());
    }
}
