package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result_tooth", schema = "babycheckup")
public class ResultTooth {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;

    /**
     * 注意刷牙方式 0否 1是
     */
    private int attentionBrushWay;

    /**
     * 注意刷牙习惯 0否 1是
     */
    private int attentionBrushHabit;

    /**
     * 注意换牙后的歪斜情况 0否 1是
     */
    private int attentionTeethSituation;

    /**
     * 评语
     */
    private String comment;

    /**
     * 左上1
     */
    private String leftUp1;

    /**
     * 左上2
     */
    private String leftUp2;

    /**
     * 左上3
     */
    private String leftUp3;

    /**
     * 左上4
     */
    private String leftUp4;

    /**
     * 左上5
     */
    private String leftUp5;

    /**
     * 左上6
     */
    private String leftUp6;

    /**
     * 左上7
     */
    private String leftUp7;

    /**
     * 左下1
     */
    private String leftDown1;

    /**
     * 左下2
     */
    private String leftDown2;

    /**
     * 左下3
     */
    private String leftDown3;

    /**
     * 左下4
     */
    private String leftDown4;

    /**
     * 左下5
     */
    private String leftDown5;

    /**
     * 左下6
     */
    private String leftDown6;

    /**
     * 左下7
     */
    private String leftDown7;

    /**
     * 右下1
     */
    private String rightDown1;

    /**
     * 右下2
     */
    private String rightDown2;

    /**
     * 右下3
     */
    private String rightDown3;

    /**
     * 右下4
     */
    private String rightDown4;

    /**
     * 右下5
     */
    private String rightDown5;

    /**
     * 右下6
     */
    private String rightDown6;

    /**
     * 右下7
     */
    private String rightDown7;

    /**
     * 右上1
     */
    private String rightUp1;

    /**
     * 右上2
     */
    private String rightUp2;

    /**
     * 右上3
     */
    private String rightUp3;

    /**
     * 右上4
     */
    private String rightUp4;

    /**
     * 右上5
     */
    private String rightUp5;

    /**
     * 右上6
     */
    private String rightUp6;

    /**
     * 右上7
     */
    private String rightUp7;

    /**
     * 备注
     */
    private String remark;

    // 创建人
    private String createUser;

    // 创建时间
    private Date createTime;

    // 修改人
    private String updateUser;

    // 修改时间
    private Date updateTime;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "test_id", nullable = false)
    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    @Basic
    @Column(name = "baby_id", nullable = false)
    public int getBabyId() {
        return babyId;
    }

    public void setBabyId(int babyId) {
        this.babyId = babyId;
    }

    @Basic
    @Column(name = "time", nullable = false)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "hos_id", nullable = false)
    public int getHosId() {
        return hosId;
    }

    public void setHosId(int hosId) {
        this.hosId = hosId;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "state", nullable = true, length = 20)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "attention_brush_way")
    public int getAttentionBrushWay() {
        return attentionBrushWay;
    }

    public void setAttentionBrushWay(int attentionBrushWay) {
        this.attentionBrushWay = attentionBrushWay;
    }

    @Basic
    @Column(name = "attention_brush_habit")
    public int getAttentionBrushHabit() {
        return attentionBrushHabit;
    }

    public void setAttentionBrushHabit(int attentionBrushHabit) {
        this.attentionBrushHabit = attentionBrushHabit;
    }

    @Basic
    @Column(name = "attention_teeth_situation")
    public int getAttentionTeethSituation() {
        return attentionTeethSituation;
    }

    public void setAttentionTeethSituation(int attentionTeethSituation) {
        this.attentionTeethSituation = attentionTeethSituation;
    }

    @Basic
    @Column(name = "comment")
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Basic
    @Column(name = "left_up_1")
    public String getLeftUp1() {
        return leftUp1;
    }

    public void setLeftUp1(String leftUp1) {
        this.leftUp1 = leftUp1;
    }

    @Basic
    @Column(name = "left_up_2")
    public String getLeftUp2() {
        return leftUp2;
    }

    public void setLeftUp2(String leftUp2) {
        this.leftUp2 = leftUp2;
    }

    @Basic
    @Column(name = "left_up_3")
    public String getLeftUp3() {
        return leftUp3;
    }

    public void setLeftUp3(String leftUp3) {
        this.leftUp3 = leftUp3;
    }

    @Basic
    @Column(name = "left_up_4")
    public String getLeftUp4() {
        return leftUp4;
    }

    public void setLeftUp4(String leftUp4) {
        this.leftUp4 = leftUp4;
    }

    @Basic
    @Column(name = "left_up_5")
    public String getLeftUp5() {
        return leftUp5;
    }

    public void setLeftUp5(String leftUp5) {
        this.leftUp5 = leftUp5;
    }

    @Basic
    @Column(name = "left_up_6")
    public String getLeftUp6() {
        return leftUp6;
    }

    public void setLeftUp6(String leftUp6) {
        this.leftUp6 = leftUp6;
    }

    @Basic
    @Column(name = "left_up_7")
    public String getLeftUp7() {
        return leftUp7;
    }

    public void setLeftUp7(String leftUp7) {
        this.leftUp7 = leftUp7;
    }

    @Basic
    @Column(name = "left_down_1")
    public String getLeftDown1() {
        return leftDown1;
    }

    public void setLeftDown1(String leftDown1) {
        this.leftDown1 = leftDown1;
    }

    @Basic
    @Column(name = "left_down_2")
    public String getLeftDown2() {
        return leftDown2;
    }

    public void setLeftDown2(String leftDown2) {
        this.leftDown2 = leftDown2;
    }

    @Basic
    @Column(name = "left_down_3")
    public String getLeftDown3() {
        return leftDown3;
    }

    public void setLeftDown3(String leftDown3) {
        this.leftDown3 = leftDown3;
    }

    @Basic
    @Column(name = "left_down_4")
    public String getLeftDown4() {
        return leftDown4;
    }

    public void setLeftDown4(String leftDown4) {
        this.leftDown4 = leftDown4;
    }

    @Basic
    @Column(name = "left_down_5")
    public String getLeftDown5() {
        return leftDown5;
    }

    public void setLeftDown5(String leftDown5) {
        this.leftDown5 = leftDown5;
    }

    @Basic
    @Column(name = "left_down_6")
    public String getLeftDown6() {
        return leftDown6;
    }

    public void setLeftDown6(String leftDown6) {
        this.leftDown6 = leftDown6;
    }

    @Basic
    @Column(name = "left_down_7")
    public String getLeftDown7() {
        return leftDown7;
    }

    public void setLeftDown7(String leftDown7) {
        this.leftDown7 = leftDown7;
    }

    @Basic
    @Column(name = "right_down_1")
    public String getRightDown1() {
        return rightDown1;
    }

    public void setRightDown1(String rightDown1) {
        this.rightDown1 = rightDown1;
    }

    @Basic
    @Column(name = "right_down_2")
    public String getRightDown2() {
        return rightDown2;
    }

    public void setRightDown2(String rightDown2) {
        this.rightDown2 = rightDown2;
    }

    @Basic
    @Column(name = "right_down_3")
    public String getRightDown3() {
        return rightDown3;
    }

    public void setRightDown3(String rightDown3) {
        this.rightDown3 = rightDown3;
    }

    @Basic
    @Column(name = "right_down_4")
    public String getRightDown4() {
        return rightDown4;
    }

    public void setRightDown4(String rightDown4) {
        this.rightDown4 = rightDown4;
    }

    @Basic
    @Column(name = "right_down_5")
    public String getRightDown5() {
        return rightDown5;
    }

    public void setRightDown5(String rightDown5) {
        this.rightDown5 = rightDown5;
    }

    @Basic
    @Column(name = "right_down_6")
    public String getRightDown6() {
        return rightDown6;
    }

    public void setRightDown6(String rightDown6) {
        this.rightDown6 = rightDown6;
    }

    @Basic
    @Column(name = "right_down_7")
    public String getRightDown7() {
        return rightDown7;
    }

    public void setRightDown7(String rightDown7) {
        this.rightDown7 = rightDown7;
    }

    @Basic
    @Column(name = "right_up_1")
    public String getRightUp1() {
        return rightUp1;
    }

    public void setRightUp1(String rightUp1) {
        this.rightUp1 = rightUp1;
    }

    @Basic
    @Column(name = "right_up_2")
    public String getRightUp2() {
        return rightUp2;
    }

    public void setRightUp2(String rightUp2) {
        this.rightUp2 = rightUp2;
    }

    @Basic
    @Column(name = "right_up_3")
    public String getRightUp3() {
        return rightUp3;
    }

    public void setRightUp3(String rightUp3) {
        this.rightUp3 = rightUp3;
    }

    @Basic
    @Column(name = "right_up_4")
    public String getRightUp4() {
        return rightUp4;
    }

    public void setRightUp4(String rightUp4) {
        this.rightUp4 = rightUp4;
    }

    @Basic
    @Column(name = "right_up_5")
    public String getRightUp5() {
        return rightUp5;
    }

    public void setRightUp5(String rightUp5) {
        this.rightUp5 = rightUp5;
    }

    @Basic
    @Column(name = "right_up_6")
    public String getRightUp6() {
        return rightUp6;
    }

    public void setRightUp6(String rightUp6) {
        this.rightUp6 = rightUp6;
    }

    @Basic
    @Column(name = "right_up_7")
    public String getRightUp7() {
        return rightUp7;
    }

    public void setRightUp7(String rightUp7) {
        this.rightUp7 = rightUp7;
    }

    @Basic
    @Column(name = "remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "create_user", nullable = false)
    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    @Basic
    @Column(name = "create_time", nullable = false)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "update_user", nullable = false)
    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    @Basic
    @Column(name = "update_time", nullable = false)
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}
