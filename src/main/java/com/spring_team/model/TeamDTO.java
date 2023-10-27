package com.spring_team.model;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

@AllArgsConstructor
@NoArgsConstructor
public class TeamDTO {
    int  teamno;
    String tname;
    String skills;
    String phone;
    String address;
    String zipcode;
    String gender;
    String rdate;

}
