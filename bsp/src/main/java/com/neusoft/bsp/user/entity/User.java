package com.neusoft.bsp.user.entity;

import com.neusoft.bsp.common.base.BaseEntity;
import com.neusoft.bsp.common.validationGroup.DeleteGroup;
import com.neusoft.bsp.common.validationGroup.InsertGroup;
import com.neusoft.bsp.common.validationGroup.SelectGroup;
import com.neusoft.bsp.common.validationGroup.UpdateGroup;

import javax.validation.constraints.NotNull;

public class User implements BaseEntity<String> {
    @NotNull(groups={InsertGroup.class, UpdateGroup.class, SelectGroup.class, DeleteGroup.class}, message = "userid should not be null")
    String USER_ID;
    @NotNull(message = "The username shouldn't be null", groups = {InsertGroup.class, UpdateGroup.class})
    String USERNAME;
    String PASSWORD;
    String NAME;
    String RIGHTS;
    String ROLE_ID;
    String LAST_LOGIN;
    String IP;
    String STATUS;
    String BZ;
    String SKIN;
    String EMAIL;
    String NUMBER;
    String PHONE;
    int MAN_BUYER_ID;

    public String getId() { return USER_ID; }

    public String getUSER_ID() {
        return USER_ID;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME;
    }

    public String getPASSWORD() {
        return PASSWORD;
    }

    public void setPASSWORD(String PASSWORD) {
        this.PASSWORD = PASSWORD;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getRIGHTS() {
        return RIGHTS;
    }

    public void setRIGHTS(String RIGHTS) {
        this.RIGHTS = RIGHTS;
    }

    public String getROLE_ID() {
        return ROLE_ID;
    }

    public void setROLE_ID(String ROLE_ID) {
        this.ROLE_ID = ROLE_ID;
    }

    public String getLAST_LOGIN() {
        return LAST_LOGIN;
    }

    public void setLAST_LOGIN(String LAST_LOGIN) {
        this.LAST_LOGIN = LAST_LOGIN;
    }

    public String getIP() {
        return IP;
    }

    public void setIP(String IP) {
        this.IP = IP;
    }

    public String getSTATUS() {
        return STATUS;
    }

    public void setSTATUS(String STATUS) {
        this.STATUS = STATUS;
    }

    public String getBZ() {
        return BZ;
    }

    public void setBZ(String BZ) {
        this.BZ = BZ;
    }

    public String getSKIN() {
        return SKIN;
    }

    public void setSKIN(String SKIN) {
        this.SKIN = SKIN;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getNUMBER() {
        return NUMBER;
    }

    public void setNUMBER(String NUMBER) {
        this.NUMBER = NUMBER;
    }

    public String getPHONE() {
        return PHONE;
    }

    public void setPHONE(String PHONE) {
        this.PHONE = PHONE;
    }

    public int getMAN_BUYER_ID() {
        return MAN_BUYER_ID;
    }

    public void setMAN_BUYER_ID(int MAN_BUYER_ID) {
        this.MAN_BUYER_ID = MAN_BUYER_ID;
    }

    @Override
    public String toString() {
        return "User{" +
                "USER_ID='" + USER_ID + '\'' +
                ", USERNAME='" + USERNAME + '\'' +
                ", PASSWORD='" + PASSWORD + '\'' +
                ", NAME='" + NAME + '\'' +
                ", RIGHTS='" + RIGHTS + '\'' +
                ", ROLE_ID='" + ROLE_ID + '\'' +
                ", LAST_LOGIN='" + LAST_LOGIN + '\'' +
                ", IP='" + IP + '\'' +
                ", STATUS='" + STATUS + '\'' +
                ", BZ='" + BZ + '\'' +
                ", SKIN='" + SKIN + '\'' +
                ", EMAIL='" + EMAIL + '\'' +
                ", NUMBER='" + NUMBER + '\'' +
                ", PHONE='" + PHONE + '\'' +
                ", MAN_BUYER_ID=" + MAN_BUYER_ID +
                '}';
    }
}
