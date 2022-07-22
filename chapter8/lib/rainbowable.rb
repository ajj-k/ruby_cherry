module Rainbowable

  def rainbow
    # 自分自身の文字列表現の取得
    str = self.to_s

    # ループカウンタと，色をつけた文字を順に格納する配列
    count = 0
    colored_chars = []

    # 取得した文字列を1文字ずつループ処理する
    str.each_char do |char|
      # 31 ~ 36 で繰り返す
      color = 31 + count % 6
      # ANSIエスケープシーケンスの付与（配列に追加していく）して，文字を追加する
      colored_chars << "\e[#{color}m#{char}"
      count += 1
    end

    ret = colored_chars.join
    ret + "\e[0m"
  end
end