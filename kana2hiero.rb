# coding: utf-8

# [ヒエログリフで五十音図](http://www.geocities.jp/p451640/moji/skm/gjo/gjo_16.html)
# ただし、表にない文字はよしなに付け足した(ぢ => じ、っ => つ、など)
table = {
  "あ" => "𓄿", "い" => "𓇌", "う" => "𓅱", "え" => "𓇋", "お" => "𓍯",
  "か" => "𓎡𓄿", "き" => "𓎡𓏭", "く" => "𓎡𓅱", "け" => "𓎡𓇋", "こ" => "𓎡𓍯", "きゃ" => "𓎡𓏭𓄿", "きゅ" => "𓎡𓏭𓅱", "きょ" => "𓎡𓏭𓍯",
  "さ" => "𓋴𓄿", "し" => "𓐚", "す" => "𓋴𓅱", "せ" => "𓋴𓇋", "そ" => "𓋴𓍯", "しゃ" => "𓐚𓄿", "しゅ" => "𓐚𓅱", "しょ" => "𓐚𓍯",
  "た" => "𓏏𓄿", "ち" => "𓍿", "つ" => "𓏏𓅱", "て" => "𓏏𓇋", "と" => "𓏏𓍯", "ちゃ" => "𓍿𓄿", "ちゅ" => "𓍿𓅱", "ちょ" => "𓍿𓍯", "っ" => "𓏏𓅱",
  "な" => "𓈖𓄿", "に" => "𓈖𓏭", "ぬ" => "𓈖𓅱", "ね" => "𓈖𓇋", "の" => "𓈖𓍯", "にゃ" => "𓈖𓏭𓄿", "にゅ" => "𓈖𓏭𓅱", "にょ" => "𓈖𓏭𓍯",
  "は" => "𓉔𓄿", "ひ" => "𓉔𓏭", "ふ" => "𓆑", "へ" => "𓉔𓇋", "ほ" => "𓉔𓍯", "ひゃ" => "𓉔𓏭𓄿", "ひゅ" => "𓉔𓏭𓅱", "ひょ" => "𓉔𓏭𓍯",
  "ま" => "𓅓𓂝", "み" => "𓅓𓏭", "む" => "𓅓𓅱", "め" => "𓅓𓇋", "も" => "𓅓𓍯", "みゃ" => "𓅓𓏭𓄿", "みゅ" => "𓅓𓏭𓅱", "みょ" => "𓅓𓏭𓍯",
  "や" => "𓇌𓄿", "ゆ" => "𓇌𓅱", "よ" => "𓇌𓍯",
  "ら" => "𓂋𓂝", "り" => "𓂋𓏭", "る" => "𓂋𓅱", "れ" => "𓂋𓇋", "ろ" => "𓂋𓍯", "りゃ" => "𓂋𓏭𓄿", "りゅ" => "𓂋𓏭𓅱", "りょ" => "𓂋𓏭𓍯",
  "わ" => "𓄿𓂝", "を" => "𓍯",
  "ん" => "𓈖",
  "が" => "𓎼𓄿", "ぎ" => "𓎼𓏭", "ぐ" => "𓎼𓅱", "げ" => "𓎼𓇋", "ご" => "𓎼𓍯", "ぎゃ" => "𓎼𓏭𓄿", "ぎゅ" => "𓎼𓏭𓅱", "ぎょ" => "𓎼𓏭𓍯",
  "ざ" => "𓊃", "じ" => "𓆓", "ず" => "𓊃𓅱", "ぜ" => "𓊃𓇋", "ぞ" => "𓊃𓍯", "じゃ" => "𓆓𓄿", "じゅ" => "𓆓𓅱", "じょ" => "𓆓𓍯",
  "だ" => "𓂧𓂝", "ぢ" => "𓆓", "づ" => "𓊃𓅱", "で" => "𓂧𓇋", "ど" => "𓂧𓍯", "ぢゃ" => "𓆓𓄿", "ぢゅ" => "𓆓𓅱", "ぢょ" => "𓆓𓍯",
  "ば" => "𓃀𓄿", "び" => "𓃀𓏭", "ぶ" => "𓃀𓅱", "べ" => "𓃀𓇋", "ぼ" => "𓃀𓍯", "びゃ" => "𓃀𓏭𓄿", "びゅ" => "𓃀𓏭𓅱", "びょ" => "𓃀𓏭𓍯",
  "ぱ" => "𓊌𓄿", "ぴ" => "𓊌𓏭", "ぷ" => "𓊌𓅱", "ぺ" => "𓊌𓇋", "ぽ" => "𓊌𓍯", "ぴゃ" => "𓊌𓏭𓄿", "ぴゅ" => "𓊌𓏭𓅱", "ぴょ" => "𓊌𓏭𓍯",
}

# 「きゃ」みたいに2文字で構成されているやつに優先的にマッチさせる
regex = table.keys.sort_by {|s| -s.length}.join("|")

STDIN.each_line do |text|
  puts text.chomp.gsub(/#{regex}/, table)
end

