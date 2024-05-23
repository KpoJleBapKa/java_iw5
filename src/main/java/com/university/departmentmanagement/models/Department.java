package com.university.departmentmanagement.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import jakarta.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "departments")
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String title;
    private String phone;
    private String classroom;

    @OneToMany(mappedBy = "department", cascade = CascadeType.ALL)
    private List<Subject> subjects;

    @OneToMany(mappedBy = "department", cascade = CascadeType.ALL)
    private List<DepartmentNews> news;
}
