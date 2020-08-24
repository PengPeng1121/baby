package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result_feed", schema = "babycheckup")
public class ResultFeed {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;

    /**
     * 当前奶量
     */
    private String currentMilkYield;

    /**
     * 喂养奶粉类型
     */
    private String milkType;

    /**
     * 配方种类
     */
    private String milkRecipe;

    /**
     * 配方种类备注
     */
    private String milkRecipeInfo;

    /**
     * 辅食添加情况
     */
    private String accessoryFoodSituation;

    /**
     * 食物过敏 0否 1是
     */
    private int isFoodAllergy;

    /**
     * 食物过敏情况
     */
    private String foodAllergySituation;

    /**
     * 辅食添加次数/天
     */
    private String accessoryFoodAddTimes;

    /**
     * 辅食形状
     */
    private String accessoryFoodShape;

    /**
     * 辅食添加时间
     */
    private String accessoryFoodAddDate;

    /**
     * 是否自主进食 0否 1是
     */
    private int isOwnFood;

    /**
     * 自主进食情况
     */
    private String ownFoodSituation;

    /**
     * 大便情况
     */
    private String shitTimes;

    /**
     * 大便形状
     */
    private String shitShape;
    /**
     * 喂养建议
     */
    private String feedSuggest;

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
    @Column(name = "current_milk_yield")
    public String getCurrentMilkYield() {
        return currentMilkYield;
    }

    public void setCurrentMilkYield(String currentMilkYield) {
        this.currentMilkYield = currentMilkYield;
    }

    @Basic
    @Column(name = "milk_type")
    public String getMilkType() {
        return milkType;
    }

    public void setMilkType(String milkType) {
        this.milkType = milkType;
    }

    @Basic
    @Column(name = "milk_recipe")
    public String getMilkRecipe() {
        return milkRecipe;
    }

    public void setMilkRecipe(String milkRecipe) {
        this.milkRecipe = milkRecipe;
    }

    @Basic
    @Column(name = "milk_recipe_info")
    public String getMilkRecipeInfo() {
        return milkRecipeInfo;
    }

    public void setMilkRecipeInfo(String milkRecipeInfo) {
        this.milkRecipeInfo = milkRecipeInfo;
    }

    @Basic
    @Column(name = "accessory_food_situation")
    public String getAccessoryFoodSituation() {
        return accessoryFoodSituation;
    }

    public void setAccessoryFoodSituation(String accessoryFoodSituation) {
        this.accessoryFoodSituation = accessoryFoodSituation;
    }

    @Basic
    @Column(name = "is_food_allergy")
    public int getIsFoodAllergy() {
        return isFoodAllergy;
    }

    public void setIsFoodAllergy(int isFoodAllergy) {
        this.isFoodAllergy = isFoodAllergy;
    }

    @Basic
    @Column(name = "food_allergy_situation")
    public String getFoodAllergySituation() {
        return foodAllergySituation;
    }

    public void setFoodAllergySituation(String foodAllergySituation) {
        this.foodAllergySituation = foodAllergySituation;
    }

    @Basic
    @Column(name = "accessory_food_add_times")
    public String getAccessoryFoodAddTimes() {
        return accessoryFoodAddTimes;
    }

    public void setAccessoryFoodAddTimes(String accessoryFoodAddTimes) {
        this.accessoryFoodAddTimes = accessoryFoodAddTimes;
    }

    @Basic
    @Column(name = "accessory_food_shape")
    public String getAccessoryFoodShape() {
        return accessoryFoodShape;
    }

    public void setAccessoryFoodShape(String accessoryFoodShape) {
        this.accessoryFoodShape = accessoryFoodShape;
    }

    @Basic
    @Column(name = "accessory_food_add_date")
    public String getAccessoryFoodAddDate() {
        return accessoryFoodAddDate;
    }

    public void setAccessoryFoodAddDate(String accessoryFoodAddDate) {
        this.accessoryFoodAddDate = accessoryFoodAddDate;
    }

    @Basic
    @Column(name = "is_own_food")
    public int getIsOwnFood() {
        return isOwnFood;
    }

    public void setIsOwnFood(int isOwnFood) {
        this.isOwnFood = isOwnFood;
    }

    @Basic
    @Column(name = "own_food_situation")
    public String getOwnFoodSituation() {
        return ownFoodSituation;
    }

    public void setOwnFoodSituation(String ownFoodSituation) {
        this.ownFoodSituation = ownFoodSituation;
    }

    @Basic
    @Column(name = "shit_times")
    public String getShitTimes() {
        return shitTimes;
    }

    public void setShitTimes(String shitTimes) {
        this.shitTimes = shitTimes;
    }

    @Basic
    @Column(name = "shit_shape")
    public String getShitShape() {
        return shitShape;
    }

    public void setShitShape(String shitShape) {
        this.shitShape = shitShape;
    }

    @Basic
    @Column(name = "feed_suggest")
    public String getFeedSuggest() {
        return feedSuggest;
    }

    public void setFeedSuggest(String feedSuggest) {
        this.feedSuggest = feedSuggest;
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
