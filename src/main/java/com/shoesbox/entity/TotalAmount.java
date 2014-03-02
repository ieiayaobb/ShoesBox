package com.shoesbox.entity;


public class TotalAmount {
    private int amountId;
    private String sellGoodsName;
    private String sellGoodsPrice;
    private String totalPrices;

    public int getAmountId() {
        return amountId;
    }

    public void setAmountId(int amountId) {
        this.amountId = amountId;
    }

    public String getSellGoodsName() {
        return sellGoodsName;
    }

    public void setSellGoodsName(String sellGoodsName) {
        this.sellGoodsName = sellGoodsName;
    }

    public String getSellGoodsPrice() {
        return sellGoodsPrice;
    }

    public void setSellGoodsPrice(String sellGoodsPrice) {
        this.sellGoodsPrice = sellGoodsPrice;
    }

    public String getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(String totalPrices) {
        this.totalPrices = totalPrices;
    }
}
