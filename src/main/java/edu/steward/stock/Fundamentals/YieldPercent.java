package edu.steward.stock.Fundamentals;

/**
 * Created by mrobins on 4/22/17.
 */
public class YieldPercent extends Fundamental {
  private double yield;

  public YieldPercent(double yield) {
    this.yield = yield;
  }

  @Override
  public Double getValue() {
    return yield;
  }

  @Override
  public Long getTime() {
    return System.currentTimeMillis() / 1000;
  }

  @Override
  public String getType() {
    return "Yield (%)";
  }
}
