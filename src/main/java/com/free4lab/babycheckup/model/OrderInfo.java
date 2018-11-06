package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "order_info", schema = "babycheckup", catalog = "")
public class OrderInfo {
    private int id;
    private int resultId;
    private Integer testId;
    //订单号
    private String orderNo;
    // 订单状态（WAITING_PAY:待支付；ALREADY_PAY:已支付；PAY_FAILED:支付失败；请求失败：REQUEST_FAILED）',
    private String orderStatus;

    private String payMoney;// '支付金额（单位分）',
    private String failReason; //'失败原因',
    private String requestXml;// '发送的请求',
    private String responeXml;// '接收返回',


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
    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    @Basic
    @Column(name = "result_id", nullable = false)
    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    @Basic
    @Column(name = "order_no", nullable = false)
    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    @Basic
    @Column(name = "order_status", nullable = false)
    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Basic
    @Column(name = "pay_money", nullable = false)
    public String getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(String payMoney) {
        this.payMoney = payMoney;
    }

    @Basic
    @Column(name = "fail_reason", nullable = false)
    public String getFailReason() {
        return failReason;
    }

    public void setFailReason(String failReason) {
        this.failReason = failReason;
    }

    @Basic
    @Column(name = "request_xml", nullable = false)
    public String getRequestXml() {
        return requestXml;
    }

    public void setRequestXml(String requestXml) {
        this.requestXml = requestXml;
    }

    @Basic
    @Column(name = "respone_xml", nullable = false)
    public String getResponeXml() {
        return responeXml;
    }

    public void setResponeXml(String responeXml) {
        this.responeXml = responeXml;
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
