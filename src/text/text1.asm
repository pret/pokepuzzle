TextSub_164000:
	tx_set_vram_tiles PtrTable_16400f
	tx_set_delay 3
	tx_unk_ef Func_10cfe8
	tx_fill_color 1
	tx_speedup_enabled TRUE
	tx_ret

PtrTable_16400f:
	dw .line_1
	dw .line_2
	dw NULL

.line_1
	dwb v0Tiles2 tile $30, BANK(v0Tiles2)
	dwb v0Tiles2 tile $31, BANK(v0Tiles2)
	dwb v0Tiles2 tile $32, BANK(v0Tiles2)
	dwb v0Tiles2 tile $33, BANK(v0Tiles2)
	dwb v0Tiles2 tile $34, BANK(v0Tiles2)
	dwb v0Tiles2 tile $35, BANK(v0Tiles2)
	dwb v0Tiles2 tile $36, BANK(v0Tiles2)
	dwb v0Tiles2 tile $37, BANK(v0Tiles2)
	dwb v0Tiles2 tile $38, BANK(v0Tiles2)
	dwb v0Tiles2 tile $39, BANK(v0Tiles2)

.line_2
	dwb v0Tiles2 tile $40, BANK(v0Tiles2)
	dwb v0Tiles2 tile $41, BANK(v0Tiles2)
	dwb v0Tiles2 tile $42, BANK(v0Tiles2)
	dwb v0Tiles2 tile $43, BANK(v0Tiles2)
	dwb v0Tiles2 tile $44, BANK(v0Tiles2)
	dwb v0Tiles2 tile $45, BANK(v0Tiles2)
	dwb v0Tiles2 tile $46, BANK(v0Tiles2)
	dwb v0Tiles2 tile $47, BANK(v0Tiles2)
	dwb v0Tiles2 tile $48, BANK(v0Tiles2)
	dwb v0Tiles2 tile $49, BANK(v0Tiles2)
	dab NULL

Text_164054:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 1"
	tx_condition Func_14294
	tx_clear
	text1 "クリアラインより\n"
	text1 "うえにあるパネルを"
	tx_condition Func_14294
	tx_clear
	text1 "ぜんぶけすと\n"
	text1 "ステージクリアです"
	tx_condition Func_14294
	tx_clear
	text1 "パネルは あせらずに\n"
	text1 "けしましょう"
	tx_condition Func_14294
	tx_clear
	text1 "このように\n"
	text1 "ラウンドのはじめには"
	tx_condition Func_14294
	tx_clear
	text1 "ヒントが ひょうじ\n"
	text1 "されます"
	tx_condition Func_14294
	tx_clear
	text1 "やくにたつ ヒントが\n"
	text1 "あるはずです"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Falkner>\n"
	text1 " "
	text3 "Round 1"
	tx_condition Func_14294
	tx_clear
	text3 "Clear all\n"
	text3 "blocks from"
	tx_condition Func_14294
	tx_clear
	text3 "above the\n"
	text3 "white line"
	tx_condition Func_14294
	tx_clear
	text3 "to clear\n"
	text3 "the stage."
	tx_condition Func_14294
	tx_clear
	text3 "Don't rush\n"
	text3 "to clear"
	tx_condition Func_14294
	tx_clear
	text3 "blocks."
	tx_condition Func_14294
	tx_clear
	text3 "You'll get\n"
	text3 "hints that"
	tx_condition Func_14294
	tx_clear
	text3 "should be\n"
	text3 "helpful at"
	tx_condition Func_14294
	tx_clear
	text3 "the start\n"
	text3 "of each"
	tx_condition Func_14294
	tx_clear
	text3 "round.\n"
	tx_end

Text_1641fa:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 6"
	tx_condition Func_14294
	tx_clear
	text1 "さいごのラウンドです"
	tx_condition Func_14294
	tx_clear
	text1 "ここから いちばん\n"
	text1 "だいじなことは"
	tx_condition Func_14294
	tx_clear
	text1 "おちついて\n"
	text1 "プレーすることです"
	tx_condition Func_14294
	tx_clear
	text1 "ぜったいに あせって\n"
	text1 "は いけません"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Pryce>\n"
	text1 " "
	text3 "Round 6"
	tx_condition Func_14294
	tx_clear
	text3 "This is"
	tx_condition Func_14294
	tx_clear
	text3 "the final\n"
	text3 "round."
	tx_condition Func_14294
	tx_clear
	text3 "Just relax\n"
	text3 "and try"
	tx_condition Func_14294
	tx_clear
	text3 "your best."
	tx_condition Func_14294
	tx_clear
	text3 "Don't\n"
	text3 "panic!"
	tx_end

Text_1642f5:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 2"
	tx_condition Func_14294
	tx_clear
	text1 "どうじけしをしたり\n"
	text1 "れんさをすると"
	tx_condition Func_14294
	tx_clear
	text1 "パネルのせりあがりが\n"
	text1 "すこしだけとまります"
	tx_condition Func_14294
	tx_clear
	text1 "とまっているときは\n"
	text1 "がめんのみぎに..."
	tx_condition Func_14294
	tx_clear
	text1 "のこりのタイムが\n"
	text1 "ひょうじされます"
	tx_condition Func_14294
	tx_clear
	text1 "このゲームでは\n"
	text1 "とてもたいせつです"
	tx_condition Func_14294
	tx_clear
	text1 "がんばってれんしゅう\n"
	text1 "してください"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Bugsy>\n"
	text1 " "
	text3 "Round 2"
	tx_condition Func_14294
	tx_clear
	text3 "Combos and\n"
	text3 "chains"
	tx_condition Func_14294
	tx_clear
	text3 "stop blocks\n"
	text3 "briefly."
	tx_condition Func_14294
	tx_clear
	text3 "Remaining\n"
	text3 "time is"
	tx_condition Func_14294
	tx_clear
	text3 "shown on\n"
	text3 "the right"
	tx_condition Func_14294
	tx_clear
	text3 "when they\n"
	text3 "stop."
	tx_condition Func_14294
	tx_clear
	text3 "Watch the\n"
	text3 "time, as"
	tx_condition Func_14294
	tx_clear
	text3 "it's very\n"
	text3 "important."
	tx_condition Func_14294
	tx_clear
	text3 "Practice\n"
	text3 "hard!"
	tx_end

Text_164493:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 3"
	tx_condition Func_14294
	tx_clear
	text1 "てんじょうとの\n"
	text1 "すきまが..."
	tx_condition Func_14294
	tx_clear
	text1 "1パネルもないときに\n"
	text1 "どうじけしや..."
	tx_condition Func_14294
	tx_clear
	text1 "れんさをすると\n"
	text1 "いつもより..."
	tx_condition Func_14294
	tx_clear
	text1 "すこし ながいじかん\n"
	text1 "パネルのせりあがりが"
	tx_condition Func_14294
	tx_clear
	text1 "ストップします"
	tx_condition Func_14294
	tx_clear
	text1 "あきらめずに\n"
	text1 "がんばってください"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Whitney>\n"
	text1 " "
	text3 "Round 3"
	tx_condition Func_14294
	tx_clear
	text3 "Get chains\n"
	text3 "or combos"
	tx_condition Func_14294
	tx_clear
	text3 "when your\n"
	text3 "stack is"
	tx_condition Func_14294
	tx_clear
	text3 "one block\n"
	text3 "from the"
	tx_condition Func_14294
	tx_clear
	text3 "top to\n"
	text3 "stop the"
	tx_condition Func_14294
	tx_clear
	text3 "blocks\n"
	text3 "longer."
	tx_condition Func_14294
	tx_clear
	text3 "Don't\n"
	text3 "give up!"
	tx_end

Text_1645ee:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 4"
	tx_condition Func_14294
	tx_clear
	text1 "じっせんで かつには\n"
	text1 "もっともっと..."
	tx_condition Func_14294
	tx_clear
	text1 "どうじけしや れんさ\n"
	text1 "を することです"
	tx_condition Func_14294
	tx_clear
	text1 "SELECTがめんの\n"
	text1 "じょうたつのみち も"
	tx_condition Func_14294
	tx_clear
	text1 "やくにたつでしょう"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Jasmine>\n"
	text1 " "
	text3 "Round 4"
	tx_condition Func_14294
	tx_clear
	text3 "To win in\n"
	text3 "battle,"
	tx_condition Func_14294
	tx_clear
	text3 "you need\n"
	text3 "more chains"
	tx_condition Func_14294
	tx_clear
	text3 "and\n"
	text3 "combos."
	tx_condition Func_14294
	tx_clear
	text3 "Training\n"
	text3 "on the"
	tx_condition Func_14294
	tx_clear
	text3 "Main Menu\n"
	text3 "can help."
	tx_end

Text_164709:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラウンド 5"
	tx_condition Func_14294
	tx_clear
	text1 "どうじけしやれんさは\n"
	text1 "みにつけましたか?"
	tx_condition Func_14294
	tx_clear
	text1 "じっせんで\n"
	text1 "かつには"
	tx_condition Func_14294
	tx_clear
	text1 "どうじけしと\n"
	text1 "れんさです"
	tx_condition Func_14294
	tx_clear
	text1 "くるしくなったら\n"
	text1 "4コけしです"
	tx_condition Func_14294
	tx_clear
	text1 "ちょっとだけ\n"
	text1 "ラクになります"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Chuck>\n"
	text1 " "
	text3 "Round 5"
	tx_condition Func_14294
	tx_clear
	text3 "Got the\n"
	text3 "hang of"
	tx_condition Func_14294
	tx_clear
	text3 "chains and\n"
	text3 "combos?"
	tx_condition Func_14294
	tx_clear
	text3 "Chains and\n"
	text3 "combos"
	tx_condition Func_14294
	tx_clear
	text3 "win\n"
	text3 "battles."
	tx_condition Func_14294
	tx_clear
	text3 "Four-block\n"
	text3 "combos can"
	tx_condition Func_14294
	tx_clear
	text3 "help in a\n"
	text3 "pinch."
	tx_end

Text_164844:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "スペシャルステージ"
	tx_condition Func_14294
	tx_clear
	text1 "この ステージでは\n"
	text1 "じっせんの"
	tx_condition Func_14294
	tx_clear
	text1 "けいけんを\n"
	text1 "してもらいます"
	tx_condition Func_14294
	tx_clear
	text1 "この ステージでの\n"
	text1 "かちまけは"
	tx_condition Func_14294
	tx_clear
	text1 "きにしなくても\n"
	text1 "つぎのラウンドに"
	tx_condition Func_14294
	tx_clear
	text1 "すすむことができます"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Morty>\n"
	text1 " "
	text3 "Special Stage"
	tx_condition Func_14294
	tx_clear
	text3 "Special\n"
	text3 "Stage"
	tx_condition Func_14294
	tx_clear
	text3 "You'll get\n"
	text3 "battle"
	tx_condition Func_14294
	tx_clear
	text3 "experience\n"
	text3 "in this"
	tx_condition Func_14294
	tx_clear
	text3 "stage.\n"
	text3 "Don't worry"
	tx_condition Func_14294
	tx_clear
	text3 "about\n"
	text3 "losing--"
	tx_condition Func_14294
	tx_clear
	text3 "you can\n"
	text3 "still go"
	tx_condition Func_14294
	tx_clear
	text3 "to the\n"
	text3 "next"
	tx_condition Func_14294
	tx_clear
	text3 "stage."
	tx_end

Text_1649a0:
	tx_call TextSub_164000
	tx_lang_branch .jp, .en
.jp
	text1 "ラストステージ"
	tx_condition Func_14294
	tx_clear
	text1 "さいごとなる\n"
	text1 "このステージでは"
	tx_condition Func_14294
	tx_clear
	text1 "じつりょくが\n"
	text1 "ためされます"
	tx_condition Func_14294
	tx_clear
	text1 "どうじけしやれんさが\n"
	text1 "できなければ"
	tx_condition Func_14294
	tx_clear
	text1 "この しょうぶには\n"
	text1 "かてないでしょう"
	tx_condition Func_14294
	tx_clear
	text1 "これまでの テクニッ\n"
	text1 "クを おもいだして"
	tx_condition Func_14294
	tx_clear
	text1 "じゅうぶんに\n"
	text1 "はっきしてください"
	tx_end

.en
	text3 "Line Clear\n"
	tx_condition Func_14294
	tx_clear
	text3 "<Clair>"
	tx_condition Func_14294
	tx_clear
	text3 "The Last\n"
	text3 "Stage"
	tx_condition Func_14294
	tx_clear
	text3 "All your\n"
	text3 "skills"
	tx_condition Func_14294
	tx_clear
	text3 "will be\n"
	text3 "put to"
	tx_condition Func_14294
	tx_clear
	text3 "the test."
	tx_condition Func_14294
	tx_clear
	text3 "You can't\n"
	text3 "win if you"
	tx_condition Func_14294
	tx_clear
	text3 "don't make\n"
	text3 "chains and"
	tx_condition Func_14294
	tx_clear
	text3 "combos!"
	tx_condition Func_14294
	tx_clear
	text3 "You'll have\n"
	text3 "to use"
	tx_condition Func_14294
	tx_clear
	text3 "everything\n"
	text3 "you've"
	tx_condition Func_14294
	tx_clear
	text3 "learned\n"
	text3 "to win."
	tx_end

PtrTable_164b41:
	dw .line_1
	dw .line_2
	dw NULL

.line_1
	dwb v0Tiles2 tile $40, BANK(v0Tiles2)
	dwb v0Tiles2 tile $41, BANK(v0Tiles2)
	dwb v0Tiles2 tile $42, BANK(v0Tiles2)
	dwb v0Tiles2 tile $43, BANK(v0Tiles2)
	dwb v0Tiles2 tile $44, BANK(v0Tiles2)
	dwb v0Tiles2 tile $45, BANK(v0Tiles2)
	dwb v0Tiles2 tile $46, BANK(v0Tiles2)
	dwb v0Tiles2 tile $47, BANK(v0Tiles2)
	dwb v0Tiles2 tile $48, BANK(v0Tiles2)
	dwb v0Tiles2 tile $49, BANK(v0Tiles2)

.line_2
	dwb v0Tiles2 tile $50, BANK(v0Tiles2)
	dwb v0Tiles2 tile $51, BANK(v0Tiles2)
	dwb v0Tiles2 tile $52, BANK(v0Tiles2)
	dwb v0Tiles2 tile $53, BANK(v0Tiles2)
	dwb v0Tiles2 tile $54, BANK(v0Tiles2)
	dwb v0Tiles2 tile $55, BANK(v0Tiles2)
	dwb v0Tiles2 tile $56, BANK(v0Tiles2)
	dwb v0Tiles2 tile $57, BANK(v0Tiles2)
	dwb v0Tiles2 tile $58, BANK(v0Tiles2)
	dwb v0Tiles2 tile $59, BANK(v0Tiles2)
	dab NULL

Text_164b86:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ひとりで\n"
	text1 "あそぶモードじゃ"
.text_164baf
	tx_wait 4
	tx_jump .text_164baf
.en
	tx_clear
	text3 "Play by*\n"
	text3 "yourself"
.text_164bc9
	tx_wait 4
	tx_jump .text_164bc9

Text_164bcf:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ふたりで\n"
	text1 "あそぶモードじゃ"
.text_164bf8
	tx_wait 4
	tx_jump .text_164bf8
.en
	tx_clear
	text3 "Play with\n"
	text3 "a friend"
.text_164c13
	tx_wait 4
	tx_jump .text_164c13

Text_164c19:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "テクニックは ここで\n"
	text1 "べんきょうじゃ"
.text_164c47
	tx_wait 4
	tx_jump .text_164c47
.en
	tx_clear
	text3 "Study play\n"
	text3 "techniques"
.text_164c65
	tx_wait 4
	tx_jump .text_164c65

Text_164c6b:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ボタンのそうさの\n"
	text1 "せつめいじゃ"
.text_164c96
	tx_wait 4
	tx_jump .text_164c96
.en
	tx_clear
	text3 "View controls"
.text_164cab
	tx_wait 4
	tx_jump .text_164cab

Text_164cb1:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "いろんな きろくを\n"
	text1 "みるところじゃ"
.text_164cde
	tx_wait 4
	tx_jump .text_164cde
.en
	tx_clear
	text3 "Check game\n"
	text3 "records"
.text_164cf9
	tx_wait 4
	tx_jump .text_164cf9

Text_164cff:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "いろんな せっていを\n"
	text1 "するところじゃ"
	tx_wait 2
	tx_clear
	text1 "くわしくは せつめい\n"
	text1 "しょに かかれておる"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Set game\n"
	text3 "options"
	tx_wait 2
	tx_clear
	text3 "See the\n"
	text3 "manual"
	tx_wait 2
	tx_clear
	text3 "for details"
	tx_wait 4
	tx_jump .en

Text_164d88:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ゲームオーバーまで\n"
	text1 "プレーするモードじゃ"
	tx_wait 2
	tx_clear
	text1 "ゲームオーバーのとき\n"
	text1 "の てんすうによって"
	tx_wait 2
	tx_clear
	text1 "エンディングが\n"
	text1 "いくつかあるんじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Play until\n"
	text3 "your stack"
	tx_wait 2
	tx_clear
	text3 "hits the\n"
	text3 "top."
	tx_wait 2
	tx_clear
	text3 "Try to\n"
	text3 "earn all"
	tx_wait 2
	tx_clear
	text3 "the\n"
	text3 "endings."
	tx_wait 4
	tx_jump .en

Text_164e44:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "スコアを\n"
	text1 "きそうモードじゃ"
	tx_wait 2
	tx_clear
	text1 "いっていの じかんで\n"
	text1 "スコアに チャレンジ"
	tx_wait 2
	tx_clear
	text1 "ハイスコアを\n"
	text1 "ねらうには..."
	tx_wait 2
	tx_clear
	text1 "れんさや どうじけし\n"
	text1 "をすることじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Try to get\n"
	text3 "a high"
	tx_wait 2
	tx_clear
	text3 "score in\n"
	text3 "a limited"
	tx_wait 2
	tx_clear
	text3 "amount of\n"
	text3 "time."
	tx_wait 2
	tx_clear
	text3 "Get chains\n"
	text3 "and combos "
	tx_wait 2
	tx_clear
	text3 "for max\n"
	text3 "points!"
	tx_wait 4
	tx_jump .en

Text_164f2d:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "1ステージずつ\n"
	text1 "クリアするモードじゃ"
	tx_wait 2
	tx_clear
	text1 "1つのラウンドが\n"
	text1 "5ステージこうせい"
	tx_wait 2
	tx_clear
	text1 "ぜんぶで 30もの\n"
	text1 "ステージがあるんじゃ"
	tx_wait 2
	tx_clear
	text1 "さいごには じっせん\n"
	text1 "が ひかえておる"
	tx_wait 2
	tx_clear
	text1 "じっせんに かてれば\n"
	text1 "エンディングじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Clear all\n"
	text3 "stages."
	tx_wait 2
	tx_clear
	text3 "There are\n"
	text3 "6 rounds,"
	tx_wait 2
	tx_clear
	text3 "each with\n"
	text3 "5 stages."
	tx_wait 2
	tx_clear
	text3 "After\n"
	text3 "beating "
	tx_wait 2
	tx_clear
	text3 "all 30\n"
	text3 "stages,"
	tx_wait 2
	tx_clear
	text3 "a battle\n"
	text3 "awaits."
	tx_wait 2
	tx_clear
	text3 "Win the\n"
	text3 "final match"
	tx_wait 2
	tx_clear
	text3 "and you're\n"
	text3 "done!"
	tx_wait 4
	tx_jump .en

Text_165074:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "きまったてかずで パ\n"
	text1 "ネルをけすモードじゃ"
	tx_wait 2
	tx_clear
	text1 "つまり つめパズル!"
	tx_wait 2
	tx_clear
	text1 "1ラウンド 10ステ\n"
	text1 "ージでこうせい"
	tx_wait 2
	tx_clear
	text1 "ぜんぶで 60のもん\n"
	text1 "だいが あるんじゃ!"
	tx_wait 2
	tx_clear
	text1 "さいしょは けっこう\n"
	text1 "かんたんじゃ!"
	tx_wait 2
	tx_clear
	text1 "60もんで\n"
	text1 "ものたりなければ"
	tx_wait 2
	tx_clear
	text1 "...それは あとの\n"
	text1 "おたのしみじゃ!"
	tx_wait 2
	tx_clear
	text1 "さいごに\n"
	text1 "クリアするコツじゃが"
	tx_wait 2
	tx_clear
	text1 "ゲームちゅうに\n"
	text1 "セレクトをおすと.."
	tx_wait 2
	tx_clear
	text1 "さいしょに いれかえ\n"
	text1 "るところを..."
	tx_wait 2
	tx_clear
	text1 "おしえて\n"
	text1 "もらえるんじゃ"
	tx_wait 2
	tx_clear
	text1 "かずは かぎられてお\n"
	text1 "る きをつけるんじゃ"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Clear the\n"
	text3 "puzzles in"
	tx_wait 2
	tx_clear
	text3 "the number\n"
	text3 "of moves"
	tx_wait 2
	tx_clear
	text3 "shown.\n"
	text3 "There are"
	tx_wait 2
	tx_clear
	text3 "6 rounds\n"
	text3 "with 10"
	tx_wait 2
	tx_clear
	text3 "puzzles\n"
	text3 "each."
	tx_wait 2
	tx_clear
	text3 "It's easy\n"
	text3 "at first."
	tx_wait 2
	tx_clear
	text3 "If 60 isn't\n"
	text3 "enough..."
	tx_wait 2
	tx_clear
	text3 "there may\n"
	text3 "be more..."
	tx_wait 2
	tx_clear
	text3 "Finally,\n"
	text3 "a hint..."
	tx_wait 2
	tx_clear
	text3 "Press\n"
	text3 "SELECT"
	tx_wait 2
	tx_clear
	text3 "if you're\n"
	text3 "stuck..."
	tx_wait 2
	tx_clear
	text3 "I'll teach\n"
	text3 "you the"
	tx_wait 2
	tx_clear
	text3 "first\n"
	text3 "move."
	tx_wait 4
	tx_jump .en

Text_1652bc:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ジムリーダーたちとの\n"
	text1 "たいせんモードじゃ"
	tx_wait 2
	tx_clear
	text1 "どうじけしやれんさで\n"
	text1 "あいてをこうげきして"
	tx_wait 2
	tx_clear
	text1 "ゲームオーバーに\n"
	text1 "させたら かちじゃ!"
	tx_wait 2
	tx_clear
	text1 "ビックリパネルでも\n"
	text1 "こうげきできるんじゃ"
	tx_wait 2
	tx_clear
	text1 "くわしくは せつめい\n"
	text1 "しょに かかれておる"
	tx_wait 2
	tx_clear
	text1 "さいごに\n"
	text1 "もうひとつ!"
	tx_wait 2
	tx_clear
	text1 "ビックリパネルを\n"
	text1 "どうじけしすると.."
	tx_wait 2
	tx_clear
	text1 "こうげきりょくが\n"
	text1 "アップするんじゃ!!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Battle Gym\n"
	text3 "Leaders."
	tx_wait 2
	tx_clear
	text3 "Use combos\n"
	text3 "and chains"
	tx_wait 2
	tx_clear
	text3 "to attack\n"
	text3 "opponents."
	tx_wait 2
	tx_clear
	text3 "!-Blocks\n"
	text3 "help, too."
	tx_wait 2
	tx_clear
	text3 "See the\n"
	text3 "manual"
	tx_wait 2
	tx_clear
	text3 "for help."
	tx_wait 2
	tx_clear
	text3 "One more\n"
	text3 "thing!"
	tx_wait 2
	tx_clear
	text3 "!-Block\n"
	text3 "combos"
	tx_wait 2
	tx_clear
	text3 "power up\n"
	text3 "attacks!"
	tx_wait 4
	tx_jump .en

Text_16545b:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "つづきから\n"
	text1 "あそべるんじゃ!"
.text_165485
	tx_wait 4
	tx_jump .text_165485
.en
	tx_clear
	text3 "Continue\n"
	text3 "a game!"
.text_16549e
	tx_wait 4
	tx_jump .text_16549e

Text_1654a4:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "さいしょから\n"
	text1 "あそべるんじゃ!"
	tx_wait 2
	tx_clear
	text1 "じゃが セーブデータ\n"
	text1 "は きえるんじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Start a\n"
	text3 "new game!"
	tx_wait 2
	tx_clear
	text3 "(But your\n"
	text3 "old data"
	tx_wait 2
	tx_clear
	text3 "will be\n"
	text3 "lost!)"
	tx_wait 4
	tx_jump .en

Text_165532:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "どんどん おじゃまを\n"
	text1 "けすモードじゃ"
	tx_wait 2
	tx_clear
	text1 "ゲームオーバーまで\n"
	text1 "おじゃまをけすんじゃ"
	tx_wait 2
	tx_clear
	text1 "どのレベルまで\n"
	text1 "たえられるかの?"
	tx_wait 2
	tx_clear
	text1 "ゲームオーバーのとき\n"
	text1 "の てんすうによって"
	tx_wait 2
	tx_clear
	text1 "いくつかエンディング\n"
	text1 "があるようじゃ!!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Clear the\n"
	text3 "garbage as"
	tx_wait 2
	tx_clear
	text3 "it falls."
	tx_wait 2
	tx_clear
	text3 "Play until\n"
	text3 "your stack"
	tx_wait 2
	tx_clear
	text3 "hits the\n"
	text3 "top."
	tx_wait 2
	tx_clear
	text3 "How long\n"
	text3 "can you"
	tx_wait 2
	tx_clear
	text3 "last?"
	tx_wait 2
	tx_clear
	text3 "The ending\n"
	text3 "you see"
	tx_wait 2
	tx_clear
	text3 "depends on\n"
	text3 "your score."
	tx_wait 4
	tx_jump .en

Text_16566d:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "あいてを こうげきし\n"
	text1 "て しょうぶじゃ!"
	tx_wait 2
	tx_clear
	text1 "れんさやどうじけしで\n"
	text1 "あいてをこうげきして"
	tx_wait 2
	tx_clear
	text1 "ゲームオーバーにして\n"
	text1 "しまえば かちじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Battle\n"
	text3 "a friend"
	tx_wait 2
	tx_clear
	text3 "Use chains\n"
	text3 "and combos"
	tx_wait 2
	tx_clear
	text3 "to attack\n"
	text3 "opponents."
	tx_wait 2
	tx_clear
	text3 "Fill their\n"
	text3 "screens to"
	tx_wait 2
	tx_clear
	text3 "win the\n"
	text3 "match."
	tx_wait 4
	tx_jump .en

Text_16574f:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "スコアを あいてと\n"
	text1 "きそうモードじゃ"
	tx_wait 2
	tx_clear
	text1 "れんさや どうじけし\n"
	text1 "で こうとくてんじゃ"
	tx_wait 2
	tx_clear
	text1 "あいてより てんすう\n"
	text1 "が たかいとかちじゃ"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Compete for\n"
	text3 "the best"
	tx_wait 2
	tx_clear
	text3 "score.\n"
	text3 "Chains and"
	tx_wait 2
	tx_clear
	text3 "combos\n"
	text3 "earn more"
	tx_wait 2
	tx_clear
	text3 "points. \n"
	text3 "The best"
	tx_wait 2
	tx_clear
	text3 "score\n"
	text3 "wins."
	tx_wait 4
	tx_jump .en

Text_165825:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "パネルをけす はやさ\n"
	text1 "を きそうモードじゃ"
	tx_wait 2
	tx_clear
	text1 "しろいラインより\n"
	text1 "うえに..."
	tx_wait 2
	tx_clear
	text1 "パネルが なくなると\n"
	text1 "クリアじゃ"
	tx_wait 2
	tx_clear
	text1 "かつための コツは\n"
	text1 "れんさをするよりも"
	tx_wait 2
	tx_clear
	text1 "どうじけしを\n"
	text1 "することじゃ!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "It's a\n"
	text3 "race to"
	tx_wait 2
	tx_clear
	text3 "clear\n"
	text3 "lines."
	tx_wait 2
	tx_clear
	text3 "Clear all\n"
	text3 "blocks"
	tx_wait 2
	tx_clear
	text3 "above the\n"
	text3 "white line"
	tx_wait 2
	tx_clear
	text3 "to win."
	tx_wait 2
	tx_clear
	text3 "Combos,\n"
	text3 "not chains,"
	tx_wait 2
	tx_clear
	text3 "are the\n"
	text3 "key."
	tx_wait 4
	tx_jump .en

Text_16593a:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "スローモードで\n"
	text1 "れんしゅうじゃ!!"
	tx_wait 2
	tx_clear
	text1 "パネルのうごきが\n"
	text1 "ゆっくりじゃから"
	tx_wait 2
	tx_clear
	text1 "アクティブれんさが\n"
	text1 "やりやすいんじゃ!"
	tx_wait 2
	tx_clear
	text1 "アクティブれんさが\n"
	text1 "わからないときは.."
	tx_wait 2
	tx_clear
	text1 "したにある デモ&プ\n"
	text1 "レーをみるんじゃ!!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Practice\n"
	text3 "in slow"
	tx_wait 2
	tx_clear
	text3 "motion."
	tx_wait 2
	tx_clear
	text3 "Blocks\n"
	text3 "move"
	tx_wait 2
	tx_clear
	text3 "slowly,\n"
	text3 "so it's"
	tx_wait 2
	tx_clear
	text3 "easier to\n"
	text3 "form"
	tx_wait 2
	tx_clear
	text3 "Active\n"
	text3 "Chains."
	tx_wait 2
	tx_clear
	text3 "Study\n"
	text3 "Active"
	tx_wait 2
	tx_clear
	text3 "Chains in\n"
	text3 "Demo Play."
	tx_wait 4
	tx_jump .en

Text_165a66:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "いろんなテクニックを\n"
	text1 "さんこうにするんじゃ"
	tx_wait 2
	tx_clear
	text1 "どんなけしかたが\n"
	text1 "あるのかを..."
	tx_wait 2
	tx_clear
	text1 "しっかりと\n"
	text1 "みておくんじゃ!!"
	tx_wait 2
	tx_clear
	text1 "きっと テクニックが\n"
	text1 "みにつくはずじゃ!!"
	tx_wait 4
	tx_jump .jp
.en
	tx_clear
	text3 "Study the\n"
	text3 "techniques"
	tx_wait 2
	tx_clear
	text3 "used in\n"
	text3 "the game."
	tx_wait 2
	tx_clear
	text3 "Learn all\n"
	text3 "the ways"
	tx_wait 2
	tx_clear
	text3 "to clear\n"
	text3 "blocks."
	tx_wait 2
	tx_clear
	text3 "Study\n"
	text3 "hard!"
	tx_wait 4
	tx_jump .en

Text_165b50:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "プレーするファイルを\n"
	text1 "えらぶんじゃ!"
.text_165b7e
	tx_wait 4
	tx_jump .text_165b7e
.en
	tx_clear
	text3 "Pick a\n"
	text3 "file!"
.text_165b93
	tx_wait 4
	tx_jump .text_165b93

Text_165b99:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "ファイルを\n"
	text1 "けすときは ここじゃ"
.text_165bc5
	tx_wait 4
	tx_jump .text_165bc5
.en
	tx_clear
	text3 "Erase a\n"
	text3 "file."
.text_165bdb
	tx_wait 4
	tx_jump .text_165bdb

Text_165be1:
	tx_set_vram_tiles PtrTable_164b41
	tx_set_delay 3
	tx_lang_branch .jp, .en
.jp
	tx_clear
	text1 "さくじょするファイル\n"
	text1 "をえらぶんじゃ!"
.text_165c10
	tx_wait 4
	tx_jump .text_165c10
.en
	tx_clear
	text3 "Pick a file\n"
	text3 "to erase!"
.text_165c2e
	tx_wait 4
	tx_jump .text_165c2e

TextSub_165c34:
	tx_set_vram_tiles PtrTable_165c41
	tx_set_delay 3
	tx_unk_ef Func_10cfe8
	tx_speedup_enabled TRUE
	tx_ret

PtrTable_165c41:
	dw .line_1
	dw .line_2
	dw NULL

.line_1
	dwb v0Tiles2 tile $10, BANK(v0Tiles2)
	dwb v0Tiles2 tile $11, BANK(v0Tiles2)
	dwb v0Tiles2 tile $12, BANK(v0Tiles2)
	dwb v0Tiles2 tile $13, BANK(v0Tiles2)
	dwb v0Tiles2 tile $14, BANK(v0Tiles2)
	dwb v0Tiles2 tile $15, BANK(v0Tiles2)
	dwb v0Tiles2 tile $16, BANK(v0Tiles2)
	dwb v0Tiles2 tile $17, BANK(v0Tiles2)
	dwb v0Tiles2 tile $18, BANK(v0Tiles2)

.line_2
	dwb v0Tiles2 tile $20, BANK(v0Tiles2)
	dwb v0Tiles2 tile $21, BANK(v0Tiles2)
	dwb v0Tiles2 tile $22, BANK(v0Tiles2)
	dwb v0Tiles2 tile $23, BANK(v0Tiles2)
	dwb v0Tiles2 tile $24, BANK(v0Tiles2)
	dwb v0Tiles2 tile $25, BANK(v0Tiles2)
	dwb v0Tiles2 tile $26, BANK(v0Tiles2)
	dwb v0Tiles2 tile $27, BANK(v0Tiles2)
	dwb v0Tiles2 tile $28, BANK(v0Tiles2)
	dab NULL

Text_165c80:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ほっほ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "わしの なまえは\n"
	text1 "オーキド"
	tx_condition Func_10cfee
	tx_clear
	text1 "きめられた\n"
	text1 "てかずで パネルを"
	tx_condition Func_10cfee
	tx_clear
	text1 "すべて けすと\n"
	text1 "ステージクリア!"
	tx_condition Func_10cfee
	tx_clear
	text1 "あっ!そうそう!\n"
	text1 "まちがってパネルを"
	tx_condition Func_10cfee
	tx_clear
	text1 "いれかえてしまった\n"
	text1 "ときは"
	tx_condition Func_10cfee
	tx_clear
	text1 "Bボタンをおすと\n"
	text1 "1つまえの"
	tx_condition Func_10cfee
	tx_clear
	text1 "じょうたいに\n"
	text1 "もどるんじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "そして この\n"
	text1 "セレクトがめんで"
	tx_condition Func_10cfee
	tx_clear
	text1 "セレクトボタンを\n"
	text1 "おすと..."
	tx_condition Func_10cfee
	tx_clear
	text1 "わしが\n"
	text1 "ゲームのヒントを"
	tx_condition Func_10cfee
	tx_clear
	text1 "おしえてあげよう!"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "Hi there!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm\n"
	text3 "Prof. Oak."
	tx_condition Func_10cfee
	tx_clear
	text3 "Clear the\n"
	text3 "blocks in"
	tx_condition Func_10cfee
	tx_clear
	text3 "the moves\n"
	text3 "shown to"
	tx_condition Func_10cfee
	tx_clear
	text3 "clear the\n"
	text3 "puzzle."
	tx_condition Func_10cfee
	tx_clear
	text3 "Press the\n"
	text3 "B Button"
	tx_condition Func_10cfee
	tx_clear
	text3 "to undo\n"
	text3 "your last"
	tx_condition Func_10cfee
	tx_clear
	text3 "move if\n"
	text3 "you make "
	tx_condition Func_10cfee
	tx_clear
	text3 "a mistake."
	tx_condition Func_10cfee
	tx_clear
	text3 "Press\n"
	text3 "SELECT"
	tx_condition Func_10cfee
	tx_clear
	text3 "on this\n"
	text3 "screen to"
	tx_condition Func_10cfee
	tx_clear
	text3 "get hints\n"
	text3 "from me."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_165ea9:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "すきな ステージを\n"
	text1 "えらぶんじゃ"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_165ee5:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ゲームちゅうに\n"
	text1 "STARTボタンで"
	tx_condition Func_10cfee
	tx_clear
	text1 "このがめんに\n"
	text1 "もどれるんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ためしてみてくれ"
	tx_end

.en
	text3 "Press START\n"
	text3 "to return"
	tx_condition Func_10cfee
	tx_clear
	text3 "to this\n"
	text3 "screen."
	tx_condition Func_10cfee
	tx_clear
	text3 "Try it\n"
	text3 "out."
	tx_end

Text_165f73:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "8ステージクリア\n"
	text1 "おめでとう!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "8つのステージを\n"
	text1 "クリアすると..."
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎの ラウンドを\n"
	text1 "プレーできる!"
	tx_condition Func_10cfee
	tx_clear
	text1 "カーソルでえらんで\n"
	text1 "みるんじゃ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "じゃあ つぎも\n"
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "Nice work!\n"
	text3 "You cleared"
	tx_condition Func_10cfee
	tx_clear
	text3 "8 stages!\n"
	text3 "Now you"
	tx_condition Func_10cfee
	tx_clear
	text3 "can go on\n"
	text3 "to the"
	tx_condition Func_10cfee
	tx_clear
	text3 "next round."
	tx_condition Func_10cfee
	tx_clear
	text3 "Use the\n"
	text3 "cursor to"
	tx_condition Func_10cfee
	tx_clear
	text3 "select a\n"
	text3 "stage!"
	tx_end

Text_166084:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ステージを\n"
	text1 "えらぶんじゃ"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_1660bc:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "プレーできる\n"
	text1 "ラウンドだったら"
	tx_condition Func_10cfee
	tx_clear
	text1 "ステージを じゆう\n"
	text1 "に えらべるんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "もし もんだいが\n"
	text1 "とけないときは"
	tx_condition Func_10cfee
	tx_clear
	text1 "ほかの ステージを\n"
	text1 "えらぶんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "8ステージ\n"
	text1 "クリアすると..."
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎの ラウンドを\n"
	text1 "プレーできるんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "You can\n"
	text3 "play any"
	tx_condition Func_10cfee
	tx_clear
	text3 "stage in\n"
	text3 "a round."
	tx_condition Func_10cfee
	tx_clear
	text3 "When you\n"
	text3 "can't"
	tx_condition Func_10cfee
	tx_clear
	text3 "solve a\n"
	text3 "puzzle,"
	tx_condition Func_10cfee
	tx_clear
	text3 "pick a\n"
	text3 "different"
	tx_condition Func_10cfee
	tx_clear
	text3 "stage.\n"
	text3 "Clear"
	tx_condition Func_10cfee
	tx_clear
	text3 "at least 8\n"
	text3 "stages to"
	tx_condition Func_10cfee
	tx_clear
	text3 "go to the\n"
	text3 "next"
	tx_condition Func_10cfee
	tx_clear
	text3 "round.\n"
	text3 "Good luck!"
	tx_end

Text_166233:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "8ステージクリア\n"
	text1 "おめでとう!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "これから まだまだ\n"
	text1 "むずかしくなる!"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "You solved\n"
	text3 "8 stages!"
	tx_condition Func_10cfee
	tx_clear
	text3 "They just\n"
	text3 "get harder"
	tx_condition Func_10cfee
	tx_clear
	text3 "from now\n"
	text3 "on..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_1662db:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "すきな ステージを\n"
	text1 "えらぶんじゃ"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_166317:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "1しゅるいの\n"
	text1 "パネルのかずが"
	tx_condition Func_10cfee
	tx_clear
	text1 "4つや5つのとき\n"
	text1 "このパネルは..."
	tx_condition Func_10cfee
	tx_clear
	text1 "どうじに\n"
	text1 "けさなくちゃいかん"
	tx_condition Func_10cfee
	tx_clear
	text1 "だから..."
	tx_condition Func_10cfee
	tx_clear
	text1 "そのパネルのけしか\n"
	text1 "たを かんがえると"
	tx_condition Func_10cfee
	tx_clear
	text1 "きっと もんだいが\n"
	text1 "とけるはずじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんじゃ!!"
	tx_end

.en
	text3 "With four\n"
	text3 "or more of"
	tx_condition Func_10cfee
	tx_clear
	text3 "one kind\n"
	text3 "of block,"
	tx_condition Func_10cfee
	tx_clear
	text3 "you have\n"
	text3 "to clear"
	tx_condition Func_10cfee
	tx_clear
	text3 "them all\n"
	text3 "at once."
	tx_condition Func_10cfee
	tx_clear
	text3 "Focus on\n"
	text3 "those and"
	tx_condition Func_10cfee
	tx_clear
	text3 "you should\n"
	text3 "find the"
	tx_condition Func_10cfee
	tx_clear
	text3 "solution!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_16646d:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "8ステージクリア\n"
	text1 "おめでとう!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "これで はんぶんの\n"
	text1 "ラウンドクリアじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきも\n"
	text1 "がんばるんじゃ!!"
	tx_end

.en
	text3 "You solved\n"
	text3 "8 stages!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Now you've\n"
	text3 "cleared"
	tx_condition Func_10cfee
	tx_clear
	text3 "half the\n"
	text3 "rounds!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Keep it up!"
	tx_end

Text_16651f:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ステージを\n"
	text1 "えらぶんじゃ"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_166557:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "1ラウンド 10\n"
	text1 "ステージぜんぶを"
	tx_condition Func_10cfee
	tx_clear
	text1 "クリアすると ほし\n"
	text1 "が もらえるんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "とけない もんだい\n"
	text1 "が あったら..."
	tx_condition Func_10cfee
	tx_clear
	text1 "ゲームちゅう セレ\n"
	text1 "クトボタンをおすと"
	tx_condition Func_10cfee
	tx_clear
	text1 "そのほしを\n"
	text1 "つかって..."
	tx_condition Func_10cfee
	tx_clear
	text1 "さいしょの いれか\n"
	text1 "えるところを"
	tx_condition Func_10cfee
	tx_clear
	text1 "おしえて\n"
	text1 "もらえるんじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ラウンドすべての\n"
	text1 "ステージを"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばって\n"
	text1 "クリアするんじゃ"
	tx_end

.en
	text3 "You get a\n"
	text3 "star after"
	tx_condition Func_10cfee
	tx_clear
	text3 "you clear\n"
	text3 "all the"
	tx_condition Func_10cfee
	tx_clear
	text3 "stages in\n"
	text3 "a round."
	tx_condition Func_10cfee
	tx_clear
	text3 "If you get\n"
	text3 "stuck,"
	tx_condition Func_10cfee
	tx_clear
	text3 "you can\n"
	text3 "use a star"
	tx_condition Func_10cfee
	tx_clear
	text3 "to get a\n"
	text3 "hint about"
	tx_condition Func_10cfee
	tx_clear
	text3 "the first\n"
	text3 "move."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck\n"
	text3 "clearing"
	tx_condition Func_10cfee
	tx_clear
	text3 "all the\n"
	text3 "stages!"
	tx_end

Text_166711:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "8ステージクリア\n"
	text1 "おめでとう!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "あとすこしで\n"
	text1 "エンディングじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "しかし もんだいは\n"
	text1 "むずかしくなる!"
	tx_condition Func_10cfee
	tx_clear
	text1 "あたまをつかって\n"
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "You cleared\n"
	text3 "8 stages!"
	tx_condition Func_10cfee
	tx_clear
	text3 "But the\n"
	text3 "puzzles"
	tx_condition Func_10cfee
	tx_clear
	text3 "will get\n"
	text3 "harder,"
	tx_condition Func_10cfee
	tx_clear
	text3 "so use\n"
	text3 "your head!"
	tx_end

Text_1667e0:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "すきな ステージを\n"
	text1 "えらぶんじゃ!"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_16681d:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "もんだいが\n"
	text1 "とけないときは.."
	tx_condition Func_10cfee
	tx_clear
	text1 "とにかく パネルを\n"
	text1 "いれかえてみる!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "いままで みえなか\n"
	text1 "ったところが"
	tx_condition Func_10cfee
	tx_clear
	text1 "きっと みえるはず\n"
	text1 "じゃ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "まず だいいっぽを\n"
	text1 "ふみだすことじゃ!"
	tx_end

.en
	text3 "If you get\n"
	text3 "stuck,"
	tx_condition Func_10cfee
	tx_clear
	text3 "just try\n"
	text3 "moving"
	tx_condition Func_10cfee
	tx_clear
	text3 "blocks. You\n"
	text3 "just may"
	tx_condition Func_10cfee
	tx_clear
	text3 "see\n"
	text3 "something"
	tx_condition Func_10cfee
	tx_clear
	text3 "you never\n"
	text3 "thought of"
	tx_condition Func_10cfee
	tx_clear
	text3 "before!"
	tx_end

Text_166927:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "おお! 8ステージ\n"
	text1 "クリアじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎの ラウンドで\n"
	text1 "さいごじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "あとすこし\n"
	text1 "がんばるんじゃ!!"
	tx_end

.en
	text3 "Way to go!\n"
	text3 "The next"
	tx_condition Func_10cfee
	tx_clear
	text3 "round is\n"
	text3 "the last!"
	tx_condition Func_10cfee
	tx_clear
	text3 "You can\n"
	text3 "do it!"
	tx_end

Text_1669c2:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ステージを\n"
	text1 "えらぶんじゃ"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_1669fa:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "パネルの はいちを\n"
	text1 "よく みることじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "3つでけすのか\n"
	text1 "4つでけすのか?"
	tx_condition Func_10cfee
	tx_clear
	text1 "どういうかたちで\n"
	text1 "れんさをするか"
	tx_condition Func_10cfee
	tx_clear
	text1 "しっかりと\n"
	text1 "かんがえるのじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "そして パネルの\n"
	text1 "よこのはいちを"
	tx_condition Func_10cfee
	tx_clear
	text1 "しっかりと\n"
	text1 "かくにんするんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ほとんどの\n"
	text1 "もんだいは..."
	tx_condition Func_10cfee
	tx_clear
	text1 "これで とけるはず\n"
	text1 "じゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "じゃが 5こでけす\n"
	text1 "パネルには..."
	tx_condition Func_10cfee
	tx_clear
	text1 "きをつけないと\n"
	text1 "いかん!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "けしかたが\n"
	text1 "たくさんあって"
	tx_condition Func_10cfee
	tx_clear
	text1 "とても むずかしい\n"
	text1 "んじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "けんとうを\n"
	text1 "いのっとるぞ..."
	tx_end

.en
	text3 "Study the\n"
	text3 "blocks..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Should you\n"
	text3 "break"
	tx_condition Func_10cfee
	tx_clear
	text3 "three, \n"
	text3 "or four?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Think hard\n"
	text3 "about"
	tx_condition Func_10cfee
	tx_clear
	text3 "which\n"
	text3 "chains to"
	tx_condition Func_10cfee
	tx_clear
	text3 "form and\n"
	text3 "watch"
	tx_condition Func_10cfee
	tx_clear
	text3 "adjacent\n"
	text3 "blocks."
	tx_condition Func_10cfee
	tx_clear
	text3 "Planning\n"
	text3 "should"
	tx_condition Func_10cfee
	tx_clear
	text3 "solve most\n"
	text3 "puzzles."
	tx_condition Func_10cfee
	tx_clear
	text3 "Don't be\n"
	text3 "careless!"
	tx_condition Func_10cfee
	tx_clear
	text3 "There are\n"
	text3 "many ways"
	tx_condition Func_10cfee
	tx_clear
	text3 "to clear\n"
	text3 "blocks."
	tx_condition Func_10cfee
	tx_clear
	text3 "It will be\n"
	text3 "difficult,"
	tx_condition Func_10cfee
	tx_clear
	text3 "but I'm\n"
	text3 "with you!"
	tx_end

Text_166c77:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "8ステージクリア\n"
	text1 "おつかれさん"
	tx_condition Func_10cfee
	tx_clear
	text1 "これで すべての\n"
	text1 "ラウンドをクリア"
	tx_condition Func_10cfee
	tx_clear
	text1 "っと いいたいとこ\n"
	text1 "ろじゃが....."
	tx_end

.en
	text3 "You did it!\n"
	text3 "8 stages!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I just\n"
	text3 "wish I"
	tx_condition Func_10cfee
	tx_clear
	text3 "could say\n"
	text3 "you were"
	tx_condition Func_10cfee
	tx_clear
	text3 "all\n"
	text3 "done..."
	tx_end

Text_166d29:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "これが さいごの\n"
	text1 "しれんじゃ"
	tx_condition Func_10cfee
	tx_clear
	text1 "このラウンドの\n"
	text1 "どれかひとつの"
	tx_condition Func_10cfee
	tx_clear
	text1 "ステージを クリア\n"
	text1 "すれば..."
	tx_condition Func_10cfee
	tx_clear
	text1 "めでたく\n"
	text1 "エンディングじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "かなり むずかしい\n"
	text1 "じゃろうが"
	tx_condition Func_10cfee
	tx_clear
	text1 "ここまできた キミ\n"
	text1 "なら だいじょうぶ"
	tx_condition Func_10cfee
	tx_clear
	text1 "これが さいご!\n"
	text1 "がんばるんじゃ!!"
	tx_end

.en
	text3 "This is\n"
	text3 "the final"
	tx_condition Func_10cfee
	tx_clear
	text3 "challenge."
	tx_condition Func_10cfee
	tx_clear
	text3 "Clear any\n"
	text3 "stage in"
	tx_condition Func_10cfee
	tx_clear
	text3 "this round\n"
	text3 "to see the"
	tx_condition Func_10cfee
	tx_clear
	text3 "ending."
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm sure\n"
	text3 "it's very"
	tx_condition Func_10cfee
	tx_clear
	text3 "hard, but\n"
	text3 "since"
	tx_condition Func_10cfee
	tx_clear
	text3 "you've\n"
	text3 "come this"
	tx_condition Func_10cfee
	tx_clear
	text3 "far, I\n"
	text3 "think you"
	tx_condition Func_10cfee
	tx_clear
	text3 "can do it!"
	tx_end

Text_166eaf:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "どれか ステージを\n"
	text1 "えらぶんじゃ!"
	tx_end

.en
	text3 "Pick any\n"
	text3 "stage."
	tx_end

Text_166eec:
	tx_call TextSub_165c34
	tx_lang_branch .jp, .en
.jp
	text1 "ヒントは もう\n"
	text1 "ひつようないじゃろ"
	tx_condition Func_10cfee
	tx_clear
	text1 ".......!!\n"
	text1 "そうじゃ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ひとつ いいことを\n"
	text1 "おしえよう..."
	tx_condition Func_10cfee
	tx_clear
	text1 "8ラウンドまでの\n"
	text1 "すべてのステージを"
	tx_condition Func_10cfee
	tx_clear
	text1 "クリアしてから\n"
	text1 "このラウンドの"
	tx_condition Func_10cfee
	tx_clear
	text1 "ステージを\n"
	text1 "クリアすると..."
	tx_condition Func_10cfee
	tx_clear
	text1 "パーフェクトな\n"
	text1 "エンディングを"
	tx_condition Func_10cfee
	tx_clear
	text1 "みられるんじゃ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ちょうせんしてみる\n"
	text1 "のも よかろう"
	tx_end

.en
	text3 "You don't\n"
	text3 "need any"
	tx_condition Func_10cfee
	tx_clear
	text3 "hints."
	tx_condition Func_10cfee
	tx_clear
	text3 "Wait...\n"
	text3 "Let me say"
	tx_condition Func_10cfee
	tx_clear
	text3 "this...\n"
	text3 "If you"
	tx_condition Func_10cfee
	tx_clear
	text3 "clear all\n"
	text3 "stages up"
	tx_condition Func_10cfee
	tx_clear
	text3 "to Round 7\n"
	text3 "and then"
	tx_condition Func_10cfee
	tx_clear
	text3 "clear any\n"
	text3 "stage in"
	tx_condition Func_10cfee
	tx_clear
	text3 "this\n"
	text3 "round,"
	tx_condition Func_10cfee
	tx_clear
	text3 "you'll get\n"
	text3 "to see the"
	tx_condition Func_10cfee
	tx_clear
	text3 "perfect\n"
	text3 "ending!"
	tx_condition Func_10cfee
	tx_clear
	text3 "It's worth\n"
	text3 "a shot!"
	tx_end

TextSub_1670c1:
	tx_set_vram_tiles PtrTable_1670d0
	tx_set_delay 3
	tx_unk_ef Func_10cfe8
	tx_fill_color 1
	tx_speedup_enabled TRUE
	tx_ret

PtrTable_1670d0:
	dw .line_1
	dw .line_2
	dw NULL

.line_1
	dwb v0Tiles1 tile $40, BANK(v0Tiles1)
	dwb v0Tiles1 tile $41, BANK(v0Tiles1)
	dwb v0Tiles1 tile $42, BANK(v0Tiles1)
	dwb v0Tiles1 tile $43, BANK(v0Tiles1)
	dwb v0Tiles1 tile $44, BANK(v0Tiles1)
	dwb v0Tiles1 tile $45, BANK(v0Tiles1)
	dwb v0Tiles1 tile $46, BANK(v0Tiles1)
	dwb v0Tiles1 tile $47, BANK(v0Tiles1)
	dwb v0Tiles1 tile $48, BANK(v0Tiles1)
	dwb v0Tiles1 tile $49, BANK(v0Tiles1)

.line_2
	dwb v0Tiles1 tile $50, BANK(v0Tiles1)
	dwb v0Tiles1 tile $51, BANK(v0Tiles1)
	dwb v0Tiles1 tile $52, BANK(v0Tiles1)
	dwb v0Tiles1 tile $53, BANK(v0Tiles1)
	dwb v0Tiles1 tile $54, BANK(v0Tiles1)
	dwb v0Tiles1 tile $55, BANK(v0Tiles1)
	dwb v0Tiles1 tile $56, BANK(v0Tiles1)
	dwb v0Tiles1 tile $57, BANK(v0Tiles1)
	dwb v0Tiles1 tile $58, BANK(v0Tiles1)
	dwb v0Tiles1 tile $59, BANK(v0Tiles1)
	dab NULL

Text_167115:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "パネルでポンの\n"
	text1 "たのしいところは.."
	tx_condition Func_7e1ce
	tx_clear
	text1 "なんといっても\n"
	text1 "アクティブれんさじゃ"
	tx_condition Func_7e1ce
	tx_clear
	text1 "このスローモードで\n"
	text1 "れんしゅうじゃ!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "9999てんで\n"
	text1 "とくてんが"
	tx_condition Func_7e1ce
	tx_clear
	text1 "ストップする!\n"
	text1 "がんばるんじゃ!!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "それじゃ\n"
	text1 "またあとでな"
	tx_end

.en
	text3 "Active\n"
	text3 "Chains are"
	tx_condition Func_7e1ce
	tx_clear
	text3 "the best\n"
	text3 "part of"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Puzzle\n"
	text3 "Challenge."
	tx_condition Func_7e1ce
	tx_clear
	text3 "Practice\n"
	text3 "them in"
	tx_condition Func_7e1ce
	tx_clear
	text3 "this Slow-Mo\n"
	text3 "Mode."
	tx_condition Func_7e1ce
	tx_clear
	text3 "You're\n"
	text3 "done when"
	tx_condition Func_7e1ce
	tx_clear
	text3 "you reach\n"
	text3 "9999 pts."
	tx_condition Func_7e1ce
	tx_clear
	text3 "Good luck!"
	tx_end

TextSub_167265:
	tx_set_vram_tiles PtrTable_16726a
	tx_ret

PtrTable_16726a:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $60, BANK(v0Tiles1)
	dwb v0Tiles1 tile $61, BANK(v0Tiles1)
	dwb v0Tiles1 tile $62, BANK(v0Tiles1)
	dwb v0Tiles1 tile $63, BANK(v0Tiles1)
	dwb v0Tiles1 tile $64, BANK(v0Tiles1)
	dwb v0Tiles1 tile $65, BANK(v0Tiles1)
	dwb v0Tiles1 tile $66, BANK(v0Tiles1)
	dwb v0Tiles1 tile $67, BANK(v0Tiles1)
	dwb v0Tiles1 tile $68, BANK(v0Tiles1)
	dwb v0Tiles1 tile $69, BANK(v0Tiles1)
	dab NULL

Text_16728f:
	tx_call TextSub_167265
	tx_lang_branch .jp, .en
.jp
	text1 "ちゃんと あそんでね"
	tx_end

.en
	text3 "Oh, come on..."
	tx_end

Text_1672c2:
	tx_call TextSub_167265
	tx_lang_branch .jp, .en
.jp
	text1 "もっと がんばって!"
	tx_end

.en
	text3 "Keep trying!"
	tx_end

Text_1672f3:
	tx_call TextSub_167265
	tx_lang_branch .jp, .en
.jp
	text1 "とっても うまいね!"
	tx_end

.en
	text3 "Very good!"
	tx_end

Text_167322:
	tx_call TextSub_167265
	tx_lang_branch .jp, .en
.jp
	text1 "もうすぐエンディング"
	tx_end

.en
	text3 "Oh! So close!"
	tx_end

Text_167354:
	tx_call TextSub_167265
	tx_lang_branch .jp, .en
.jp
	text1 "おめでとう!!   "
	tx_end

.en
	text3 "You did it!!!"
	tx_end

Text_167386:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "ちゃんと パネルを\n"
	text1 "いれかえてけすんじゃ"
	tx_condition Func_7e1ce
	tx_clear
	text1 "もっともっと\n"
	text1 "れんしゅうじゃな"
	tx_end

.en
	text3 "Move\n"
	text3 "blocks"
	tx_condition Func_7e1ce
	tx_clear
	text3 "to clear\n"
	text3 "them."
	tx_condition Func_7e1ce
	tx_clear
	text3 "You need\n"
	text3 "practice!"
	tx_end

Text_167406:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "てんすうを\n"
	text1 "かせぐためには..."
	tx_condition Func_7e1ce
	tx_clear
	text1 "れんさやどうじけし\n"
	text1 "をすることじゃ!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "むずかしいとおもうが\n"
	text1 "れんしゅうじゃ!"
	tx_end

.en
	text3 "Get chains\n"
	text3 "and combos"
	tx_condition Func_7e1ce
	tx_clear
	text3 "for max\n"
	text3 "points!"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Practice"
	tx_condition Func_7e1ce
	tx_clear
	text3 "makes\n"
	text3 "perfect!"
	tx_end

Text_1674b4:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "なかなか やるの"
	tx_condition Func_7e1ce
	tx_clear
	text1 "アクティブれんさも\n"
	text1 "できておるか?"
	tx_condition Func_7e1ce
	tx_clear
	text1 "そのちょうしで\n"
	text1 "がんばるんじゃ!"
	tx_end

.en
	text3 "Not bad\n"
	text3 "at all."
	tx_condition Func_7e1ce
	tx_clear
	text3 "But can\n"
	text3 "you make"
	tx_condition Func_7e1ce
	tx_clear
	text3 "active\n"
	text3 "chains?"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Keep up\n"
	text3 "the pace!"
	tx_end

Text_16755a:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "うーん おしいのう!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "もうすこしで エンデ\n"
	text1 "ィング なんじゃが"
	tx_condition Func_7e1ce
	tx_clear
	text1 "アクティブれんさは\n"
	text1 "できたかの?"
	tx_condition Func_7e1ce
	tx_clear
	text1 "このスローモードで\n"
	text1 "れんしゅうして"
	tx_condition Func_7e1ce
	tx_clear
	text1 "つぎこそは\n"
	text1 "エンディングじゃ!!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "もうすこしじゃ!!"
	tx_end

.en
	text3 "Oh, so\n"
	text3 "close!"
	tx_condition Func_7e1ce
	tx_clear
	text3 "You almost\n"
	text3 "made it!"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Did you\n"
	text3 "have any"
	tx_condition Func_7e1ce
	tx_clear
	text3 "active\n"
	text3 "chains?"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Keep\n"
	text3 "practicing"
	tx_condition Func_7e1ce
	tx_clear
	text3 "in Slow\n"
	text3 "Mode."
	tx_condition Func_7e1ce
	tx_clear
	text3 "You almost\n"
	text3 "made it!"
	tx_end

Text_167687:
	tx_call TextSub_1670c1
	tx_lang_branch .jp, .en
.jp
	text1 "おー!!\n"
	text1 "おめでとう!!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "つぎは うえのレベル\n"
	text1 "でエンディングじゃ!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "これだけ できれば\n"
	text1 "だいじょうぶじゃ!!"
	tx_condition Func_7e1ce
	tx_clear
	text1 "じゃあ!\n"
	text1 "きたいしておるぞ!!"
	tx_end

.en
	text3 "You did\n"
	text3 "it!!!"
	tx_condition Func_7e1ce
	tx_clear
	text3 "Now try to\n"
	text3 "clear the"
	tx_condition Func_7e1ce
	tx_clear
	text3 "harder\n"
	text3 "levels."
	tx_condition Func_7e1ce
	tx_clear
	text3 "You can\n"
	text3 "handle it."
	tx_condition Func_7e1ce
	tx_clear
	text3 "I know you\n"
	text3 "can do it!"
	tx_end

Text_16776f:
	tx_set_vram_tiles PtrTable_16780b
	tx_lang_branch .jp, .en
.jp
	text1 "スイッチをOFFにして ふたたびON"
	text1 "にすると ちゅうだ"
	text1 "んしたところから"
	text1 "はじめられるよ"
	text1 "       "
	text1 "ゆっくりやす"
	text1 "んでね!  "
	tx_end

.en
	text3 "Turn the power OFF\n"
	text3 "to save.\n"
	text3 "Continue\n"
	text3 "when you\n"
	text3 "turn\n"
	text3 "it ON."
	tx_end

PtrTable_16780b:
	dw .line_1
	dw .line_2
	dw .line_3
	dw .line_4
	dw .line_5
	dw .line_6
	dw .line_7
	dw NULL

.line_1
	dwb v0Tiles1 tile $40, BANK(v0Tiles1)
	dwb v0Tiles1 tile $41, BANK(v0Tiles1)
	dwb v0Tiles1 tile $42, BANK(v0Tiles1)
	dwb v0Tiles1 tile $43, BANK(v0Tiles1)
	dwb v0Tiles1 tile $44, BANK(v0Tiles1)
	dwb v0Tiles1 tile $45, BANK(v0Tiles1)
	dwb v0Tiles1 tile $46, BANK(v0Tiles1)
	dwb v0Tiles1 tile $47, BANK(v0Tiles1)
	dwb v0Tiles1 tile $48, BANK(v0Tiles1)
	dwb v0Tiles1 tile $49, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $4f, BANK(v0Tiles1)
	dwb v0Tiles1 tile $50, BANK(v0Tiles1)
	dwb v0Tiles1 tile $51, BANK(v0Tiles1)

.line_2
	dwb v0Tiles1 tile $52, BANK(v0Tiles1)
	dwb v0Tiles1 tile $53, BANK(v0Tiles1)
	dwb v0Tiles1 tile $54, BANK(v0Tiles1)
	dwb v0Tiles1 tile $55, BANK(v0Tiles1)
	dwb v0Tiles1 tile $56, BANK(v0Tiles1)
	dwb v0Tiles1 tile $57, BANK(v0Tiles1)
	dwb v0Tiles1 tile $58, BANK(v0Tiles1)
	dwb v0Tiles1 tile $59, BANK(v0Tiles1)
	dwb v0Tiles1 tile $5a, BANK(v0Tiles1)

.line_3
	dwb v0Tiles1 tile $5b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $5c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $5d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $5e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $5f, BANK(v0Tiles1)
	dwb v0Tiles1 tile $60, BANK(v0Tiles1)
	dwb v0Tiles1 tile $61, BANK(v0Tiles1)
	dwb v0Tiles1 tile $62, BANK(v0Tiles1)

.line_4
	dwb v0Tiles1 tile $63, BANK(v0Tiles1)
	dwb v0Tiles1 tile $64, BANK(v0Tiles1)
	dwb v0Tiles1 tile $65, BANK(v0Tiles1)
	dwb v0Tiles1 tile $66, BANK(v0Tiles1)
	dwb v0Tiles1 tile $67, BANK(v0Tiles1)
	dwb v0Tiles1 tile $68, BANK(v0Tiles1)
	dwb v0Tiles1 tile $69, BANK(v0Tiles1)

.line_5
	dwb v0Tiles1 tile $6a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $6b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $6c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $6d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $6e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $6f, BANK(v0Tiles1)
	dwb v0Tiles1 tile $70, BANK(v0Tiles1)

.line_6
	dwb v0Tiles1 tile $71, BANK(v0Tiles1)
	dwb v0Tiles1 tile $72, BANK(v0Tiles1)
	dwb v0Tiles1 tile $73, BANK(v0Tiles1)
	dwb v0Tiles1 tile $74, BANK(v0Tiles1)
	dwb v0Tiles1 tile $75, BANK(v0Tiles1)
	dwb v0Tiles1 tile $76, BANK(v0Tiles1)

.line_7
	dwb v0Tiles1 tile $77, BANK(v0Tiles1)
	dwb v0Tiles1 tile $78, BANK(v0Tiles1)
	dwb v0Tiles1 tile $79, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7c, BANK(v0Tiles1)
	dab NULL

PtrTable_1678d5:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $50, BANK(v0Tiles1)
	dwb v0Tiles1 tile $51, BANK(v0Tiles1)
	dwb v0Tiles1 tile $52, BANK(v0Tiles1)
	dwb v0Tiles1 tile $53, BANK(v0Tiles1)
	dwb v0Tiles1 tile $54, BANK(v0Tiles1)
	dwb v0Tiles1 tile $55, BANK(v0Tiles1)
	dwb v0Tiles1 tile $56, BANK(v0Tiles1)
	dwb v0Tiles1 tile $57, BANK(v0Tiles1)
	dwb v0Tiles1 tile $58, BANK(v0Tiles1)
	dab NULL

PtrTable_1678f7:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $60, BANK(v0Tiles1)
	dwb v0Tiles1 tile $61, BANK(v0Tiles1)
	dwb v0Tiles1 tile $62, BANK(v0Tiles1)
	dwb v0Tiles1 tile $63, BANK(v0Tiles1)
	dwb v0Tiles1 tile $64, BANK(v0Tiles1)
	dwb v0Tiles1 tile $65, BANK(v0Tiles1)
	dwb v0Tiles1 tile $66, BANK(v0Tiles1)
	dwb v0Tiles1 tile $67, BANK(v0Tiles1)
	dwb v0Tiles1 tile $68, BANK(v0Tiles1)
	dab NULL

PtrTable_167919:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $70, BANK(v0Tiles1)
	dwb v0Tiles1 tile $71, BANK(v0Tiles1)
	dwb v0Tiles1 tile $72, BANK(v0Tiles1)
	dwb v0Tiles1 tile $73, BANK(v0Tiles1)
	dwb v0Tiles1 tile $74, BANK(v0Tiles1)
	dwb v0Tiles1 tile $75, BANK(v0Tiles1)
	dwb v0Tiles1 tile $76, BANK(v0Tiles1)
	dwb v0Tiles1 tile $77, BANK(v0Tiles1)
	dab NULL

PtrTable_167938:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $78, BANK(v0Tiles1)
	dwb v0Tiles1 tile $79, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7f, BANK(v0Tiles1)
	dab NULL

Text_Data::
	tx_set_vram_tiles PtrTable_1678d5
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "ちゅうだんした  "
	tx_end

.en
	text3 "Data"
	tx_end

Text_Saved::
	tx_set_vram_tiles PtrTable_1678f7
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "データが あります"
	tx_end

.en
	text3 "saved:"
	tx_end

Text_Continue::
	tx_set_vram_tiles PtrTable_167919
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "さいかいする  "
	tx_end

.en
	text3 "Continue"
	tx_end

Text_Quit::
	tx_set_vram_tiles PtrTable_167938
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "さいかいしない "
	tx_end

.en
	text3 "Quit"
	tx_end

PtrTable_1679ff:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles1 tile $40, BANK(v0Tiles1)
	dwb v0Tiles1 tile $41, BANK(v0Tiles1)
	dwb v0Tiles1 tile $42, BANK(v0Tiles1)
	dwb v0Tiles1 tile $43, BANK(v0Tiles1)
	dwb v0Tiles1 tile $44, BANK(v0Tiles1)
	dwb v0Tiles1 tile $45, BANK(v0Tiles1)
	dwb v0Tiles1 tile $46, BANK(v0Tiles1)
	dwb v0Tiles1 tile $47, BANK(v0Tiles1)
	dab NULL

Text_167a1e:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "エンドレス   "
	tx_end

.en
	text3 "Marathon"
	tx_end

Text_167a4a:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "スコアアタック "
	tx_end

.en
	text3 "Time Zone"
	tx_end

Text_167a77:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "ステージクリア "
	tx_end

.en
	text3 "Line Clear"
	tx_end

Text_167aa5:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "パズル     "
	tx_end

.en
	text3 "Puzzle"
	tx_end

Text_167acf:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "VS.COM  "
	tx_end

.en
	text3 "Challenge"
	tx_end

Text_167afc:
	tx_set_vram_tiles PtrTable_1679ff
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "おじゃまアタック"
	tx_end

.en
	text3 "Garbage!"
	tx_end

Text_167b28:
	tx_set_vram_tiles PtrTable_167c26
	tx_clear
	tx_lang_branch .jp, .en
.jp
	text1 "ちゅうだんのデータは ひとりであそぶ"
	text1 "か れんしゅうモードを せんたくした"
	text1 "ときに けされます! たいせんをする"
	text1 "ときは けされません! データを  "
	text1 "けさずに でんげんを いれなおせば "
	text1 "ゲームを さいかいすることができます"
	tx_end

.en
	text3 "****\n"
	text3 "****Choosing 1 Player\n"
	text3 "****or Training will\n"
	text3 "****erase this saved\n"
	text3 "****game. Choosing\n"
	text3 "****2 Players won't."
	tx_end

PtrTable_167c26:
	dw .line_1
	dw .line_2
	dw .line_3
	dw .line_4
	dw .line_5
	dw .line_6
	dw NULL

.line_1
	dwb v0Tiles2 tile $10, BANK(v0Tiles2)
	dwb v0Tiles2 tile $11, BANK(v0Tiles2)
	dwb v0Tiles2 tile $12, BANK(v0Tiles2)
	dwb v0Tiles2 tile $13, BANK(v0Tiles2)
	dwb v0Tiles2 tile $14, BANK(v0Tiles2)
	dwb v0Tiles2 tile $15, BANK(v0Tiles2)
	dwb v0Tiles2 tile $16, BANK(v0Tiles2)
	dwb v0Tiles2 tile $17, BANK(v0Tiles2)
	dwb v0Tiles2 tile $18, BANK(v0Tiles2)
	dwb v0Tiles2 tile $19, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $20, BANK(v0Tiles2)
	dwb v0Tiles2 tile $21, BANK(v0Tiles2)

.line_2
	dwb v0Tiles2 tile $22, BANK(v0Tiles2)
	dwb v0Tiles2 tile $23, BANK(v0Tiles2)
	dwb v0Tiles2 tile $24, BANK(v0Tiles2)
	dwb v0Tiles2 tile $25, BANK(v0Tiles2)
	dwb v0Tiles2 tile $26, BANK(v0Tiles2)
	dwb v0Tiles2 tile $27, BANK(v0Tiles2)
	dwb v0Tiles2 tile $28, BANK(v0Tiles2)
	dwb v0Tiles2 tile $29, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $30, BANK(v0Tiles2)
	dwb v0Tiles2 tile $31, BANK(v0Tiles2)
	dwb v0Tiles2 tile $32, BANK(v0Tiles2)
	dwb v0Tiles2 tile $33, BANK(v0Tiles2)

.line_3
	dwb v0Tiles2 tile $34, BANK(v0Tiles2)
	dwb v0Tiles2 tile $35, BANK(v0Tiles2)
	dwb v0Tiles2 tile $36, BANK(v0Tiles2)
	dwb v0Tiles2 tile $37, BANK(v0Tiles2)
	dwb v0Tiles2 tile $38, BANK(v0Tiles2)
	dwb v0Tiles2 tile $39, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $40, BANK(v0Tiles2)
	dwb v0Tiles2 tile $41, BANK(v0Tiles2)
	dwb v0Tiles2 tile $42, BANK(v0Tiles2)
	dwb v0Tiles2 tile $43, BANK(v0Tiles2)
	dwb v0Tiles2 tile $44, BANK(v0Tiles2)
	dwb v0Tiles2 tile $45, BANK(v0Tiles2)

.line_4
	dwb v0Tiles2 tile $46, BANK(v0Tiles2)
	dwb v0Tiles2 tile $47, BANK(v0Tiles2)
	dwb v0Tiles2 tile $48, BANK(v0Tiles2)
	dwb v0Tiles2 tile $49, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $50, BANK(v0Tiles2)
	dwb v0Tiles2 tile $51, BANK(v0Tiles2)
	dwb v0Tiles2 tile $52, BANK(v0Tiles2)
	dwb v0Tiles2 tile $53, BANK(v0Tiles2)
	dwb v0Tiles2 tile $54, BANK(v0Tiles2)
	dwb v0Tiles2 tile $55, BANK(v0Tiles2)
	dwb v0Tiles2 tile $56, BANK(v0Tiles2)
	dwb v0Tiles2 tile $57, BANK(v0Tiles2)

.line_5
	dwb v0Tiles2 tile $58, BANK(v0Tiles2)
	dwb v0Tiles2 tile $59, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $60, BANK(v0Tiles2)
	dwb v0Tiles2 tile $61, BANK(v0Tiles2)
	dwb v0Tiles2 tile $62, BANK(v0Tiles2)
	dwb v0Tiles2 tile $63, BANK(v0Tiles2)
	dwb v0Tiles2 tile $64, BANK(v0Tiles2)
	dwb v0Tiles2 tile $65, BANK(v0Tiles2)
	dwb v0Tiles2 tile $66, BANK(v0Tiles2)
	dwb v0Tiles2 tile $67, BANK(v0Tiles2)
	dwb v0Tiles2 tile $68, BANK(v0Tiles2)
	dwb v0Tiles2 tile $69, BANK(v0Tiles2)

.line_6
	dwb v0Tiles2 tile $6a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $70, BANK(v0Tiles2)
	dwb v0Tiles2 tile $71, BANK(v0Tiles2)
	dwb v0Tiles2 tile $72, BANK(v0Tiles2)
	dwb v0Tiles2 tile $73, BANK(v0Tiles2)
	dwb v0Tiles2 tile $74, BANK(v0Tiles2)
	dwb v0Tiles2 tile $75, BANK(v0Tiles2)
	dwb v0Tiles2 tile $76, BANK(v0Tiles2)
	dwb v0Tiles2 tile $77, BANK(v0Tiles2)
	dwb v0Tiles2 tile $78, BANK(v0Tiles2)
	dwb v0Tiles2 tile $79, BANK(v0Tiles2)
	dwb v0Tiles2 tile $7a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $7b, BANK(v0Tiles2)
	dab NULL

Text_167d7b:
	tx_set_vram_tiles PtrTable_167dab
	tx_color 2
	tx_fill_color 0
	tx_clear
	text1 "♥♠ABCDEFGHIJ"
	text1 "KLMNOPQRSTUVWXYZ"
	text2 "”é"
	text3 "inc."
	tx_end

PtrTable_167dab:
	dw .line_1
	dw NULL

.line_1
	dwb v0Tiles2 tile $14, BANK(v0Tiles2)
	dwb v0Tiles2 tile $15, BANK(v0Tiles2)
	dwb v0Tiles2 tile $16, BANK(v0Tiles2)
	dwb v0Tiles2 tile $17, BANK(v0Tiles2)
	dwb v0Tiles2 tile $18, BANK(v0Tiles2)
	dwb v0Tiles2 tile $19, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $20, BANK(v0Tiles2)
	dwb v0Tiles2 tile $21, BANK(v0Tiles2)
	dwb v0Tiles2 tile $22, BANK(v0Tiles2)
	dwb v0Tiles2 tile $23, BANK(v0Tiles2)
	dwb v0Tiles2 tile $24, BANK(v0Tiles2)
	dwb v0Tiles2 tile $25, BANK(v0Tiles2)
	dwb v0Tiles2 tile $26, BANK(v0Tiles2)
	dwb v0Tiles2 tile $27, BANK(v0Tiles2)
	dwb v0Tiles2 tile $28, BANK(v0Tiles2)
	dwb v0Tiles2 tile $29, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2f, BANK(v0Tiles2)
	dwb v0Tiles1 tile $7b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $7f, BANK(v0Tiles1)
	dab NULL

Text_167e15:
	tx_set_vram_tiles PtrTable_167e32
	text1 "ステージクリアパズルVキャラタそ\n"
	text1 "のほかギS"
	tx_end

PtrTable_167e32:
	dw .line_1
	dw .line_2
	dw NULL

.line_1
	dwb v0Tiles2 tile $30, BANK(v0Tiles2)
	dwb v0Tiles2 tile $31, BANK(v0Tiles2)
	dwb v0Tiles2 tile $32, BANK(v0Tiles2)
	dwb v0Tiles2 tile $33, BANK(v0Tiles2)
	dwb v0Tiles2 tile $34, BANK(v0Tiles2)
	dwb v0Tiles2 tile $35, BANK(v0Tiles2)
	dwb v0Tiles2 tile $36, BANK(v0Tiles2)
	dwb v0Tiles2 tile $37, BANK(v0Tiles2)
	dwb v0Tiles2 tile $38, BANK(v0Tiles2)
	dwb v0Tiles2 tile $39, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3f, BANK(v0Tiles2)

.line_2
	dwb v0Tiles2 tile $40, BANK(v0Tiles2)
	dwb v0Tiles2 tile $41, BANK(v0Tiles2)
	dwb v0Tiles2 tile $42, BANK(v0Tiles2)
	dwb v0Tiles2 tile $43, BANK(v0Tiles2)
	dwb v0Tiles2 tile $44, BANK(v0Tiles2)
	dwb v0Tiles2 tile $45, BANK(v0Tiles2)
	dwb v0Tiles2 tile $46, BANK(v0Tiles2)
	dwb v0Tiles2 tile $47, BANK(v0Tiles2)
	dwb v0Tiles2 tile $48, BANK(v0Tiles2)
	dwb v0Tiles2 tile $49, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4f, BANK(v0Tiles2)
	dab NULL

Text_167e9b:
	text1 "リセーット!!"
	tx_end
