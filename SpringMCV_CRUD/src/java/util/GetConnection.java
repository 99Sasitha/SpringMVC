/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Sasitha Munasinghe
 */
public class GetConnection {

    public DriverManagerDataSource Conector() {

        DriverManagerDataSource dataSource = new DriverManagerDataSource();

        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3308/springmvc");
        dataSource.setUsername("root");
        dataSource.setPassword("");

        return dataSource;
    }

}
