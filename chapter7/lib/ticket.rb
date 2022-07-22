class Ticket 
  # --------------------------
  # アクセサメソッドの定義省略
  # (インスタンス).fare, (インスタンス).stamped_at の読み書きが行える
  # プロパティがインスタンス変数に該当すると考えたら良い？
  # Getter: インスタンス変数読み込み, Setter: インスタンス変数書き込み
  # --------------------------
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    @stamped_at = name # 引数name(String)をTicketのインスタンス変数@stampe_atに保存する
  end
end
