
TextSub_168000:
	tx_set_vram_tiles PtrTable_16800f
	tx_set_delay 3
	tx_unk_ef Func_10cfe8
	tx_color 2
	tx_allow_speedup TRUE
	tx_ret

PtrTable_16800f:
	dw .line_1
	dw .line_2
	dw .line_3
	dw NULL

.line_1
	dwb v0Tiles1 tile $00, BANK(v0Tiles1)
	dwb v0Tiles1 tile $01, BANK(v0Tiles1)
	dwb v0Tiles1 tile $02, BANK(v0Tiles1)
	dwb v0Tiles1 tile $03, BANK(v0Tiles1)
	dwb v0Tiles1 tile $04, BANK(v0Tiles1)
	dwb v0Tiles1 tile $05, BANK(v0Tiles1)
	dwb v0Tiles1 tile $06, BANK(v0Tiles1)
	dwb v0Tiles1 tile $07, BANK(v0Tiles1)
	dwb v0Tiles1 tile $08, BANK(v0Tiles1)
	dwb v0Tiles1 tile $09, BANK(v0Tiles1)

.line_2
	dwb v0Tiles1 tile $10, BANK(v0Tiles1)
	dwb v0Tiles1 tile $11, BANK(v0Tiles1)
	dwb v0Tiles1 tile $12, BANK(v0Tiles1)
	dwb v0Tiles1 tile $13, BANK(v0Tiles1)
	dwb v0Tiles1 tile $14, BANK(v0Tiles1)
	dwb v0Tiles1 tile $15, BANK(v0Tiles1)
	dwb v0Tiles1 tile $16, BANK(v0Tiles1)
	dwb v0Tiles1 tile $17, BANK(v0Tiles1)
	dwb v0Tiles1 tile $18, BANK(v0Tiles1)
	dwb v0Tiles1 tile $19, BANK(v0Tiles1)

.line_3
	dwb v0Tiles1 tile $20, BANK(v0Tiles1)
	dwb v0Tiles1 tile $21, BANK(v0Tiles1)
	dwb v0Tiles1 tile $22, BANK(v0Tiles1)
	dwb v0Tiles1 tile $23, BANK(v0Tiles1)
	dwb v0Tiles1 tile $24, BANK(v0Tiles1)
	dwb v0Tiles1 tile $25, BANK(v0Tiles1)
	dwb v0Tiles1 tile $26, BANK(v0Tiles1)
	dwb v0Tiles1 tile $27, BANK(v0Tiles1)
	dwb v0Tiles1 tile $28, BANK(v0Tiles1)
	dwb v0Tiles1 tile $29, BANK(v0Tiles1)
	dab NULL

Text_168074:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ウツギけんきゅうじょ\n"
	text1 "ウツギ"
	tx_condition Func_10cfee
	tx_clear
	text1 "やあ!\n"
	text1 "まっていたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "パネルでポン\n"
	text1 "りゃくして パネポン\n"
	text1 "たのしんでいるかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "いろんなひとと たい\n"
	text1 "せんすると もっと\n"
	text1 "たのしくなるはずだよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ここでは\n"
	text1 "みんなも よくしって\n"
	text1 "いる"
	tx_condition Func_10cfee
	tx_clear
	text1 "ジムリーダーたちと\n"
	text1 "たいせんだ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきに みんなが\n"
	text1 "まっているよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "それじゃ\n"
	text1 "がんばるんだよ!"
	tx_end

.en
	text3 "Elm Labs\n"
	text3 "Prof. Elm"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "waiting\n"
	text3 "for you!"
	tx_condition Func_10cfee
	tx_clear
	text3 "How's the\n"
	text3 "Challenge\n"
	text3 "going?"
	tx_condition Func_10cfee
	tx_clear
	text3 "The more\n"
	text3 "people you\n"
	text3 "take on,"
	tx_condition Func_10cfee
	tx_clear
	text3 "the more\n"
	text3 "fun you'll\n"
	text3 "have."
	tx_condition Func_10cfee
	tx_clear
	text3 "Up ahead,\n"
	text3 "you'll\n"
	text3 "battle the"
	tx_condition Func_10cfee
	tx_clear
	text3 "infamous\n"
	text3 "Gym\n"
	text3 "Leaders!!!"
	tx_condition Func_10cfee
	tx_clear
	text3 "They're\n"
	text3 "expecting\n"
	text3 "you."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_168264:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "キキョウジム\n"
	text1 "ハヤト"
	tx_condition Func_10cfee
	tx_clear
	text1 "やあ!\n"
	text1 "まってたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "さっそくだけど\n"
	text1 "はじめるよ"
	tx_end

.en
	text3 "Violet Gym\n"
	text3 "Falkner"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "waiting\n"
	text3 "for you..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Well...\n"
	text3 "Let's get\n"
	text3 "going."
	tx_end

Text_168305:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "はじめた ばかりに\n"
	text1 "しては なかなか\n"
	text1 "やるね"
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきも\n"
	text1 "がんばってね\n"
	text1 "それじゃ また"
	tx_end

.en
	text3 "You're\n"
	text3 "good for a\n"
	text3 "beginner."
	tx_condition Func_10cfee
	tx_clear
	text3 "Keep up\n"
	text3 "the good\n"
	text3 "work."
	tx_end

Text_16838f:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ヒワダジム\n"
	text1 "ツクシ"
	tx_condition Func_10cfee
	tx_clear
	text1 "こんにちは\n"
	text1 "ヒワダへ ようこそ"
	tx_condition Func_10cfee
	tx_clear
	text1 "それじゃあ しょうぶ\n"
	text1 "はじめようか"
	tx_end

.en
	text3 "Azalea Gym\n"
	text3 "Bugsy"
	tx_condition Func_10cfee
	tx_clear
	text3 "Welcome to\n"
	text3 "Azalea\n"
	text3 "Gym."
	tx_condition Func_10cfee
	tx_clear
	text3 "Enough\n"
	text3 "talk--on\n"
	text3 "to battle!"
	tx_end

Text_168433:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うーん\n"
	text1 "おくがふかいね"
	tx_condition Func_10cfee
	tx_clear
	text1 "ぼくも まだまだ\n"
	text1 "けんきゅうしなくちゃ\n"
	text1 "いけないね"
	tx_end

.en
	text3 "Hmm...\n"
	text3 "You're\n"
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "I guess I\n"
	text3 "have more\n"
	text3 "to learn."
	tx_end

Text_1684b5:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "コガネジム\n"
	text1 "アカネ"
	tx_condition Func_10cfee
	tx_clear
	text1 "はーい!\n"
	text1 "まってたんよ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ほな\n"
	text1 "しょうぶするで!"
	tx_end

.en
	text3 "Goldenrod\n"
	text3 "Gym\n"
	text3 "Whitney"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hey! You\n"
	text3 "kept me\n"
	text3 "waiting!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Forget it.\n"
	text3 "Let's just\n"
	text3 "battle."
	tx_end

Text_16855c:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "... ..."
	tx_condition Func_10cfee
	tx_clear
	text1 "... ぐっすん"
	tx_end

.en
	text3 "..."
	tx_condition Func_10cfee
	tx_clear
	text3 "...Hmph"
	tx_end

Text_16859c:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "エンジュジム\n"
	text1 "マツバ"
	tx_condition Func_10cfee
	tx_clear
	text1 "よく きたね"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみとは\n"
	text1 "いいしょうぶが\n"
	text1 "できそうだ"
	tx_end

.en
	text3 "Ecruteak\n"
	text3 "Gym\n"
	text3 "Morty"
	tx_condition Func_10cfee
	tx_clear
	text3 "Welcome."
	tx_condition Func_10cfee
	tx_clear
	text3 "This will\n"
	text3 "be a good\n"
	text3 "match."
	tx_end

Text_16862c:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "じょうずだね"
	tx_condition Func_10cfee
	tx_clear
	text1 "なかなかいいしょうぶ\n"
	text1 "が できたよ\n"
	text1 "ありがとう"
	tx_end

.en
	text3 "You're\n"
	text3 "awesome!"
	tx_condition Func_10cfee
	tx_clear
	text3 "It was\n"
	text3 "a great\n"
	text3 "match."
	tx_condition Func_10cfee
	tx_clear
	text3 "Thank you."
	tx_end

Text_1686a9:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "アサギジム\n"
	text1 "ミカン"
	tx_condition Func_10cfee
	tx_clear
	text1 "...こんにちは"
	tx_condition Func_10cfee
	tx_clear
	text1 "...あ あのう\n"
	text1 "はじめますね"
	tx_end

.en
	text3 "Olivine\n"
	text3 "Gym\n"
	text3 "Jasmine"
	tx_condition Func_10cfee
	tx_clear
	text3 "Um...\n"
	text3 "...hello."
	tx_condition Func_10cfee
	tx_clear
	text3 "Shall we\n"
	text3 "start?"
	tx_end

Text_168733:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "あ あの...\n"
	text1 "あんまり うまく\n"
	text1 "いえないけど..."
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきもがんばって\n"
	text1 "くださいね"
	tx_end

.en
	text3 "Um...\n"
	text3 "How do I\n"
	text3 "say this..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck."
	tx_end

Text_1687ad:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "タンバジム\n"
	text1 "シジマ"
	tx_condition Func_10cfee
	tx_clear
	text1 "おっしゃー!\n"
	text1 "よく きたーっ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "いっとくが わしは\n"
	text1 "つよいぞ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "では しょうぶだー!"
	tx_end

.en
	text3 "Cianwood\n"
	text3 "Gym\n"
	text3 "Chuck"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hi there!\n"
	text3 "Come on\n"
	text3 "in!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've gotta\n"
	text3 "tell ya,\n"
	text3 "I'm good!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Now get\n"
	text3 "ready to\n"
	text3 "fight!"
	tx_end

Text_168884:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "おりょ?"
	tx_condition Func_10cfee
	tx_clear
	text1 "だめかー!\n"
	text1 "24じかん とっくん\n"
	text1 "だーっ!!"
	tx_end

.en
	text3 "Huh?\n"
	text3 "I lost?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Back to \n"
	text3 "training\n"
	text3 "24-7!"
	tx_end

Text_1688ed:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "チョウジジム\n"
	text1 "ヤナギ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ここらで つらさを\n"
	text1 "あじわってみるのも\n"
	text1 "よかろう"
	tx_condition Func_10cfee
	tx_clear
	text1 "わたしの じつりょく\n"
	text1 "みせてやろうかの"
	tx_end

.en
	text3 "Mahogany\n"
	text3 "Gym\n"
	text3 "Pryce"
	tx_condition Func_10cfee
	tx_clear
	text3 "Prepare\n"
	text3 "to taste\n"
	text3 "defeat."
	tx_condition Func_10cfee
	tx_clear
	text3 "I shall\n"
	text3 "prove my\n"
	text3 "skill."
	tx_end

Text_1689a0:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うんうん みごとだ"
	tx_condition Func_10cfee
	tx_clear
	text1 "その つよいきもちを\n"
	text1 "わすれずにな"
	tx_end

.en
	text3 "Yes, yes...\n"
	text3 "Quite im-\n"
	text3 "pressive."
	tx_condition Func_10cfee
	tx_clear
	text3 "Never lose\n"
	text3 "your\n"
	text3 "focus."
	tx_end

Text_168a1b:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "フスベジム\n"
	text1 "イブキ"
	tx_condition Func_10cfee
	tx_clear
	text1 "やっと ここまで\n"
	text1 "きたわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "どれだけ じょうたつ\n"
	text1 "したかしら?"
	tx_condition Func_10cfee
	tx_clear
	text1 "この わたしが\n"
	text1 "たしかめさせて\n"
	text1 "もらうわ"
	tx_end

.en
	text3 "Blackthorn\n"
	text3 "Gym\n"
	text3 "Clair"
	tx_condition Func_10cfee
	tx_clear
	text3 "You've\n"
	text3 "finally\n"
	text3 "made it."
	tx_condition Func_10cfee
	tx_clear
	text3 "I wonder\n"
	text3 "if you've\n"
	text3 "improved."
	tx_condition Func_10cfee
	tx_clear
	text3 "I'll be the\n"
	text3 "one to\n"
	text3 "test you."
	tx_end

Text_168b05:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "けっこう やるわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "でも あなたのレベル\n"
	text1 "は こんなものじゃ\n"
	text1 "ないはずよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "もっと うえを\n"
	text1 "めざして\n"
	text1 "がんばるのよ"
	tx_end

.en
	text3 "You're not\n"
	text3 "bad, but\n"
	text3 "you're not"
	tx_condition Func_10cfee
	tx_clear
	text3 "ready for\n"
	text3 "the next\n"
	text3 "level yet."
	tx_condition Func_10cfee
	tx_clear
	text3 "You still\n"
	text3 "need more\n"
	text3 "training."
	tx_end

Text_168bd0:
	tx_call TextSub_168000
	text1 "フェニックス\n"
	text1 "はじめ"
	tx_end

Text_168be1:
	tx_call TextSub_168000
	text1 "フェニックス\n"
	text1 "おわり"
	tx_end

Text_168bf2:
	tx_call TextSub_168000
	text1 "ドラゴン\n"
	text1 "はじめ"
	tx_end

Text_168c01:
	tx_call TextSub_168000
	text1 "ドラゴン\n"
	text1 "おわり"
	tx_end

Text_168c10:
	tx_call TextSub_168000
	text1 "どうくつへ\n"
	text1 "いくぞ!?"
	tx_end

Text_168c22:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "やあ!\n"
	text1 "パネポン\n"
	text1 "がんばってるかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "NORMAL\n"
	text1 "いこうは"
	tx_condition Func_10cfee
	tx_clear
	text1 "あいてが\n"
	text1 "EASY より\n"
	text1 "つよいのは もちろん"
	tx_condition Func_10cfee
	tx_clear
	text1 "ジムリーダーいがい\n"
	text1 "の トレーナーたちが\n"
	text1 "キミのまえに..."
	tx_condition Func_10cfee
	tx_clear
	text1 "あらわれる ことも\n"
	text1 "あるんだ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "そのトレーナーたちと\n"
	text1 "のしょうぶに かつと\n"
	text1 "... ..."
	tx_condition Func_10cfee
	tx_clear
	text1 "...あっ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "それは そのときの\n"
	text1 "おたのしみに\n"
	text1 "しておこう"
	tx_condition Func_10cfee
	tx_clear
	text1 "でも なかなか\n"
	text1 "であうのは \n"
	text1 "むずかしいよ"
	tx_end

.en
	text3 "Hi! How's\n"
	text3 "the Challenge\n"
	text3 "so far?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Opponents\n"
	text3 "on the\n"
	text3 "NORMAL"
	tx_condition Func_10cfee
	tx_clear
	text3 "path will\n"
	text3 "be harder\n"
	text3 "than those"
	tx_condition Func_10cfee
	tx_clear
	text3 "on the\n"
	text3 "EASY path."
	tx_condition Func_10cfee
	tx_clear
	text3 "You'll see\n"
	text3 "trainers\n"
	text3 "other than"
	tx_condition Func_10cfee
	tx_clear
	text3 "the Gym\n"
	text3 "Leaders,\n"
	text3 "too."
	tx_condition Func_10cfee
	tx_clear
	text3 "When you\n"
	text3 "beat those\n"
	text3 "trainers..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Well...\n"
	text3 "Just wait\n"
	text3 "and see."
	tx_condition Func_10cfee
	tx_clear
	text3 "It will\n"
	text3 "be tough,\n"
	text3 "though."
	tx_end

Text_168e55:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "キキョウジム\n"
	text1 "ハヤト"
	tx_condition Func_10cfee
	tx_clear
	text1 "やあ!\n"
	text1 "まってたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "さっそくだけど\n"
	text1 "はじめるよ"
	tx_end

.en
	text3 "Violet Gym\n"
	text3 "Falkner"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "waiting..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Well...\n"
	text3 "Let's\n"
	text3 "begin."
	tx_end

Text_168ee9:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...ちくしょう\n"
	text1 "まけたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "もっと おのれを\n"
	text1 "きたえなおすよ"
	tx_end

.en
	text3 "Dang!\n"
	text3 "I lost."
	tx_condition Func_10cfee
	tx_clear
	text3 "I must\n"
	text3 "train\n"
	text3 "harder."
	tx_end

Text_168f53:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ヒワダジム\n"
	text1 "ツクシ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ぼくも かなり\n"
	text1 "けんきゅう したから\n"
	text1 "まけないよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "さあ!\n"
	text1 "はじめようか"
	tx_end

.en
	text3 "Azalea Gym\n"
	text3 "Bugsy"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "training,"
	tx_condition Func_10cfee
	tx_clear
	text3 "so you\n"
	text3 "won't win!\n"
	text3 "Let's go!"
	tx_end

Text_168ff7:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うわ すごい!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ぼくも まだまだ\n"
	text1 "けんきゅうしなくちゃ\n"
	text1 "いけないね"
	tx_end

.en
	text3 "Whoa!\n"
	text3 "Amazing!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I need\n"
	text3 "even more\n"
	text3 "training!"
	tx_end

Text_16906b:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "コガネジム\n"
	text1 "アカネ"
	tx_condition Func_10cfee
	tx_clear
	text1 "はーい!\n"
	text1 "まってたんよ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "つべこべ いわずに\n"
	text1 "しょうぶするで!"
	tx_end

.en
	text3 "Goldenrod\n"
	text3 "Gym\n"
	text3 "Whitney"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hey! You\n"
	text3 "kept me\n"
	text3 "waiting!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Let's cut\n"
	text3 "the chit-\n"
	text3 "chat!"
	tx_end

Text_169115:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "... ..."
	tx_condition Func_10cfee
	tx_clear
	text1 "... ぐっすん\n"
	text1 "... ひっぐ"
	tx_end

.en
	text3 "... ..."
	tx_condition Func_10cfee
	tx_clear
	text3 "...Hmph!\n"
	text3 "...Tch."
	tx_end

Text_16916c:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "エンジュジム\n"
	text1 "マツバ"
	tx_condition Func_10cfee
	tx_clear
	text1 "よく きたね"
	tx_condition Func_10cfee
	tx_clear
	text1 "しゅぎょうの\n"
	text1 "せいかは どうかな?"
	tx_end

.en
	text3 "Ecruteak\n"
	text3 "Gym\n"
	text3 "Morty"
	tx_condition Func_10cfee
	tx_clear
	text3 "Welcome."
	tx_condition Func_10cfee
	tx_clear
	text3 "Will my\n"
	text3 "training\n"
	text3 "pay off?"
	tx_end

Text_1691f9:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "まだ たりないのか"
	tx_condition Func_10cfee
	tx_clear
	text1 "なかなかいいしょうぶ\n"
	text1 "が できたよ\n"
	text1 "ありがとう"
	tx_end

.en
	text3 "I still\n"
	text3 "need more\n"
	text3 "training."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good\n"
	text3 "match.\n"
	text3 "Thank you."
	tx_end

Text_169277:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "アサギジム\n"
	text1 "ミカン"
	tx_condition Func_10cfee
	tx_clear
	text1 "...こんにちは"
	tx_condition Func_10cfee
	tx_clear
	text1 "...あ あのう\n"
	text1 "はじめますね"
	tx_end

.en
	text3 "Olivine\n"
	text3 "Gym\n"
	text3 "Jasmine"
	tx_condition Func_10cfee
	tx_clear
	text3 "Um...\n"
	text3 "...hello."
	tx_condition Func_10cfee
	tx_clear
	text3 "Shall we\n"
	text3 "start?"
	tx_end

Text_169301:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...あなたの\n"
	text1 "ほうが うわてみたい"
	tx_condition Func_10cfee
	tx_clear
	text1 "あ あの...\n"
	text1 "あんまり うまく\n"
	text1 "いえないけど..."
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきもがんばって\n"
	text1 "くださいね"
	tx_end

.en
	text3 "...You're\n"
	text3 "getting\n"
	text3 "better."
	tx_condition Func_10cfee
	tx_clear
	text3 "This is\n"
	text3 "hard to\n"
	text3 "say..."
	tx_condition Func_10cfee
	tx_clear
	text3 "But...\n"
	text3 "Good luck."
	tx_end

Text_1693b9:
	tx_call TextSub_168000
	; bug, japanese text points to middle of GameStateTable
	db $f2
	dwb $0a2a, $00
	REPT 5
		dab .en
	ENDR
	; tx_lang_branch .jp, .en
.jp
	text1 "タンバジム\n"
	text1 "シジマ"
	tx_condition Func_10cfee
	tx_clear
	text1 "おっしゃー!\n"
	text1 "よく きたーっ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "いっとくが わしは\n"
	text1 "さらに つよいぞ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "では しょうぶだー!"
	tx_end

.en
	text3 "Cianwood\n"
	text3 "Gym\n"
	text3 "Chuck"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hi there!\n"
	text3 "Come on\n"
	text3 "in!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've gotta\n"
	text3 "tell ya,"
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm better\n"
	text3 "now, so\n"
	text3 "get ready!"
	tx_end

Text_16948f:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "おりょ?"
	tx_condition Func_10cfee
	tx_clear
	text1 "だめかー!\n"
	text1 "24じかん とっくん\n"
	text1 "だーっ!!"
	tx_end

.en
	text3 "Huh?\n"
	text3 "I lost?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Back to\n"
	text3 "training\n"
	text3 "24-7!"
	tx_end

Text_1694f7:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "チョウジジム\n"
	text1 "ヤナギ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ここらで つらさを\n"
	text1 "あじわってみるのも\n"
	text1 "よかろう"
	tx_condition Func_10cfee
	tx_clear
	text1 "わたしの ほんとうの\n"
	text1 "じつりょく\n"
	text1 "みせてやろうかの"
	tx_end

.en
	text3 "Mahogany\n"
	text3 "Gym\n"
	text3 "Pryce"
	tx_condition Func_10cfee
	tx_clear
	text3 "Prepare to\n"
	text3 "taste\n"
	text3 "defeat."
	tx_condition Func_10cfee
	tx_clear
	text3 "I shall\n"
	text3 "prove my\n"
	text3 "skill."
	tx_end

Text_1695b1:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うんうん みごとな\n"
	text1 "たたかいっぷり"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみなら なにがあっ\n"
	text1 "ても のりこえて\n"
	text1 "いけるだろうよ"
	tx_end

.en
	text3 "Yes, yes...\n"
	text3 "A splendid\n"
	text3 "match."
	tx_condition Func_10cfee
	tx_clear
	text3 "You could\n"
	text3 "overcome\n"
	text3 "anything."
	tx_end

Text_169644:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "フスベジム\n"
	text1 "イブキ"
	tx_condition Func_10cfee
	tx_clear
	text1 "やっと ここまで\n"
	text1 "きたわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "どれだけ じょうたつ\n"
	text1 "したかしら?"
	tx_condition Func_10cfee
	tx_clear
	text1 "この わたしが\n"
	text1 "たしかめさせて\n"
	text1 "もらうわ"
	tx_end

.en
	text3 "Blackthorn\n"
	text3 "Gym\n"
	text3 "Clair"
	tx_condition Func_10cfee
	tx_clear
	text3 "You've\n"
	text3 "finally\n"
	text3 "made it."
	tx_condition Func_10cfee
	tx_clear
	text3 "How much\n"
	text3 "have you\n"
	text3 "improved?"
	tx_condition Func_10cfee
	tx_clear
	text3 "I shall be\n"
	text3 "the one to\n"
	text3 "test you."
	tx_end

Text_169730:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "けっこう やるわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "でも うえにはうえが\n"
	text1 "いるものよ..."
	tx_end

.en
	text3 "You're\n"
	text3 "pretty\n"
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "But there\n"
	text3 "are still\n"
	text3 "others..."
	tx_end

Text_1697a8:
	tx_call TextSub_168000
.jp
	tx_lang_branch .jp, .en
	text1 "プルル...\n"
	text1 "プルル...ピッ"
	tx_condition Func_10cfee
	tx_clear
	tx_exec Func_106b53
	tx_condition Func_106aef
	text1 "もしもし ウツギです"
	tx_condition Func_10cfee
	tx_clear
	text1 "... ...えっ?\n"
	text1 "もっとつよいあいてを\n"
	text1 "さがしているのかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "それなら もうすこし\n"
	text1 "さきに すすんで\n"
	text1 "みては どうかな?"
	tx_condition Func_10cfee
	tx_clear
	text1 "あとは きみじしんで\n"
	text1 "たしかめてみてね"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんだよ"
	tx_end

.en
	text3 "Rrring...\n"
	text3 "Rrring..."
	tx_condition Func_10cfee
	tx_clear
	tx_exec Func_106b53
	tx_condition Func_106aef
	text3 "Hello.\n"
	text3 "This is\n"
	text3 "Prof. Elm."
	tx_condition Func_10cfee
	tx_clear
	text3 "What?\n"
	text3 "You're\n"
	text3 "looking"
	tx_condition Func_10cfee
	tx_clear
	text3 "for\n"
	text3 "tougher\n"
	text3 "opponents?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Then keep\n"
	text3 "going\n"
	text3 "straight."
	tx_condition Func_10cfee
	tx_clear
	text3 "The rest\n"
	text3 "is up to\n"
	text3 "you."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_169925:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "イツキ"
	tx_condition Func_10cfee
	tx_clear
	text1 "してんのうの ボクた\n"
	text1 "ちに ちょうせんする\n"
	text1 "のかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "そうかんたんには\n"
	text1 "まけないよ\n"
	text1 "さあ しょうぶだ!!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Will"
	tx_condition Func_10cfee
	tx_clear
	text3 "Do you\n"
	text3 "wish to\n"
	text3 "challenge"
	tx_condition Func_10cfee
	tx_clear
	text3 "the\n"
	text3 "Elite\n"
	text3 "Four?"
	tx_condition Func_10cfee
	tx_clear
	text3 "It won't\n"
	text3 "be easy to\n"
	text3 "defeat us!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Let the\n"
	text3 "match\n"
	text3 "begin!"
	tx_end

Text_169a16:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...まいったよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみは つぎにすすん\n"
	text1 "で ほんとうの\n"
	text1 "してんのうの こわさ"
	tx_condition Func_10cfee
	tx_clear
	text1 "たしかめるが いい!"
	tx_end

.en
	text3 "You got\n"
	text3 "me!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Keep going\n"
	text3 "to see the\n"
	text3 "true power"
	tx_condition Func_10cfee
	tx_clear
	text3 "of the\n"
	text3 "Elite\n"
	text3 "Four!"
	tx_end

Text_169abc:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "キョウ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ファ ファ ファ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "せっしゃの たたかい\n"
	text1 "かたは ひとすじなわ\n"
	text1 "では いかんぞ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "たっぷりと\n"
	text1 "あじわうが よい!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Koga"
	tx_condition Func_10cfee
	tx_clear
	text3 "Ha, ha, ha!\n"
	text3 "My skill\n"
	text3 "will be"
	tx_condition Func_10cfee
	tx_clear
	text3 "hard to\n"
	text3 "overcome!\n"
	text3 "Let me"
	tx_condition Func_10cfee
	tx_clear
	text3 "show you\n"
	text3 "what I\n"
	text3 "mean!"
	tx_end

Text_169b9d:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "おお!\n"
	text1 "おぬし やりおるな!"
	tx_condition Func_10cfee
	tx_clear
	text1 "せっしゃも さらに\n"
	text1 "しょうじん しなくて\n"
	text1 "は いかんのう"
	tx_condition Func_10cfee
	tx_clear
	text1 "おぬし!\n"
	text1 "つぎに すすみ\n"
	text1 "じぶんの じつりょく"
	tx_condition Func_10cfee
	tx_clear
	text1 "ためすがよい!"
	tx_end

.en
	text3 "You have\n"
	text3 "done well."
	tx_condition Func_10cfee
	tx_clear
	text3 "I must\n"
	text3 "devote\n"
	text3 "myself"
	tx_condition Func_10cfee
	tx_clear
	text3 "to my\n"
	text3 "training."
	tx_condition Func_10cfee
	tx_clear
	text3 "Test your\n"
	text3 "skills\n"
	text3 "against"
	tx_condition Func_10cfee
	tx_clear
	text3 "the\n"
	text3 "others."
	tx_end

Text_169c8f:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "シバ"
	tx_condition Func_10cfee
	tx_clear
	text1 "げんかいまで きたえ\n"
	text1 "ている おれたちに\n"
	text1 "かなうと おもうか?"
	tx_condition Func_10cfee
	tx_clear
	text1 "ほう おそれは\n"
	text1 "なさそうだな\n"
	text1 "いい かおをしてる"
	tx_condition Func_10cfee
	tx_clear
	text1 "それでこそ\n"
	text1 "たたかうにふさわしい"
	tx_condition Func_10cfee
	tx_clear
	text1 "いくぞ!\n"
	text1 "ハイパー パワー\n"
	text1 "うけてみるが いい!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ウー! ハーッ!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Bruno"
	tx_condition Func_10cfee
	tx_clear
	text3 "Do you\n"
	text3 "think you\n"
	text3 "can match"
	tx_condition Func_10cfee
	tx_clear
	text3 "us?*We've\n"
	text3 "trained to\n"
	text3 "the limits!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I see\n"
	text3 "nothing to\n"
	text3 "fear from"
	tx_condition Func_10cfee
	tx_clear
	text3 "your face,\n"
	text3 "so let us\n"
	text3 "battle!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Feel my\n"
	text3 "incredible\n"
	text3 "power!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Wah-hah!"
	tx_end

Text_169e0f:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "どうした ことだ!\n"
	text1 "...おれたちが\n"
	text1 "まけるとは!"
	tx_condition Func_10cfee
	tx_clear
	text1 "まけた おれに\n"
	text1 "なにも いうしかくは\n"
	text1 "ない!"
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎへ\n"
	text1 "すすむが いい!"
	tx_end

.en
	text3 "What\n"
	text3 "happened?\n"
	text3 "To think"
	tx_condition Func_10cfee
	tx_clear
	text3 "we could\n"
	text3 "lose...?!?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Say nothing\n"
	text3 "to me."
	tx_condition Func_10cfee
	tx_clear
	text3 "Continue\n"
	text3 "on!"
	tx_end

Text_169ed5:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "カリン"
	tx_condition Func_10cfee
	tx_clear
	text1 "あたくしは\n"
	text1 "とーっても\n"
	text1 "つよいのよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "あなた あいてに\n"
	text1 "なるのかしら?"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばって あたくし\n"
	text1 "を たのしませて\n"
	text1 "ほしいものね"
	tx_condition Func_10cfee
	tx_clear
	text1 "じゃ はじめましょ!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Karen"
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm verrry\n"
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "Will you\n"
	text3 "challenge\n"
	text3 "me?"
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm sure\n"
	text3 "this will"
	tx_condition Func_10cfee
	tx_clear
	text3 "be a good\n"
	text3 "match."
	tx_condition Func_10cfee
	tx_clear
	text3 "Let's\n"
	text3 "begin!"
	tx_end

Text_169fe5:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ふーん やるじゃない\n"
	text1 "そーゆーの すてきよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "あなたなら きっと\n"
	text1 "もっと つよく\n"
	text1 "なれるわ"
	tx_end

.en
	text3 "Well, you\n"
	text3 "were good."
	tx_condition Func_10cfee
	tx_clear
	text3 "That was\n"
	text3 "nice, but\n"
	text3 "you could"
	tx_condition Func_10cfee
	tx_clear
	text3 "be even\n"
	text3 "stronger."
	tx_end

Text_16a085:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ふーん やるじゃない"
	tx_condition Func_10cfee
	tx_clear
	text1 "だけど あまり\n"
	text1 "たのしく なかったわ"
	tx_condition Func_10cfee
	tx_clear
	text1 "その ていど では\n"
	text1 "さきが おもいやられ\n"
	text1 "るわ"
	tx_end

.en
	text3 "Well, you\n"
	text3 "were good,"
	tx_condition Func_10cfee
	tx_clear
	text3 "but it\n"
	text3 "wasn't\n"
	text3 "much fun."
	tx_condition Func_10cfee
	tx_clear
	text3 "At that\n"
	text3 "level, I\n"
	text3 "wonder"
	tx_condition Func_10cfee
	tx_clear
	text3 "if you can\n"
	text3 "handle the\n"
	text3 "others."
	tx_end

Text_16a15a:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "プルル...\n"
	text1 "プルル...ピッ"
	tx_condition Func_10cfee
	tx_clear
	tx_exec Func_106b53
	tx_condition Func_106aef
	text1 "もしもし ウツギです"
	tx_condition Func_10cfee
	tx_clear
	text1 "よく がんばったね"
	tx_condition Func_10cfee
	tx_clear
	text1 "テクニックは かなり\n"
	text1 "みについて きている\n"
	text1 "ようだね"
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎは いよいよ\n"
	text1 "HARDに\n"
	text1 "ちょうせんだよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "こころの じゅんびは\n"
	text1 "いいかな?\n"
	text1 "おうえん しているよ"
	tx_end

.en
	text3 "Rrring...\n"
	text3 "Rrring..."
	tx_condition Func_10cfee
	tx_clear
	tx_exec Func_106b53
	tx_condition Func_106aef
	text3 "Hello.\n"
	text3 "This is\n"
	text3 "Prof. Elm."
	tx_condition Func_10cfee
	tx_clear
	text3 "Great job!"
	tx_condition Func_10cfee
	tx_clear
	text3 "You've\n"
	text3 "really\n"
	text3 "polished"
	tx_condition Func_10cfee
	tx_clear
	text3 "your\n"
	text3 "technique."
	tx_condition Func_10cfee
	tx_clear
	text3 "Now it's\n"
	text3 "time for\n"
	text3 "you to"
	tx_condition Func_10cfee
	tx_clear
	text3 "take the\n"
	text3 "HARD path."
	tx_condition Func_10cfee
	tx_clear
	text3 "Are you\n"
	text3 "mentally\n"
	text3 "prepared?"
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm\n"
	text3 "rooting\n"
	text3 "for you!"
	tx_end

Text_16a308:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "プルル...\n"
	text1 "プルル...ピッ"
	tx_condition Func_10cfee
	tx_clear
	tx_exec Func_106b53
	tx_condition Func_106aef
	text1 "もしもし ウツギです"
	tx_condition Func_10cfee
	tx_clear
	text1 "うーん\n"
	text1 "コンティニューを\n"
	text1 "つかった ようだね"
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎの HARDに\n"
	text1 "ちょうせん\n"
	text1 "するまえに"
	tx_condition Func_10cfee
	tx_clear
	text1 "コンティニューを\n"
	text1 "しないで みんなを\n"
	text1 "たおせるよう"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばって みるのも\n"
	text1 "いいんじゃない..."
	tx_end

.en
	text3 "Rrring...\n"
	text3 "Rrring..."
	tx_condition Func_10cfee
	tx_clear
	text3 "Hello.\n"
	text3 "This is\n"
	text3 "Prof. Elm."
	tx_condition Func_10cfee
	tx_clear
	text3 "I see you\n"
	text3 "used a\n"
	text3 "Continue."
	tx_condition Func_10cfee
	tx_clear
	text3 "Before you\n"
	text3 "move on to\n"
	text3 "the HARD"
	tx_condition Func_10cfee
	tx_clear
	text3 "path, try\n"
	text3 "to defeat\n"
	text3 "everyone"
	tx_condition Func_10cfee
	tx_clear
	text3 "without\n"
	text3 "using a\n"
	text3 "Continue."
	tx_condition Func_10cfee
	tx_clear
	text3 "Just try\n"
	text3 "a little\n"
	text3 "harder."
	tx_end

Text_16a4a6:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "やあ!\n"
	text1 "パネポン\n"
	text1 "がんばってるかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "HARDに\n"
	text1 "ちょうせん という\n"
	text1 "ことは"
	tx_condition Func_10cfee
	tx_clear
	text1 "とても じしんが\n"
	text1 "あるようだね"
	tx_condition Func_10cfee
	tx_clear
	text1 "だけど ここでは\n"
	text1 "してんのうより\n"
	text1 "てごわい あいてが"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみを まってるって\n"
	text1 "はなしだよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "でも それは それで\n"
	text1 "たのしみなことだね"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばるんだよ!"
	tx_end

.en
	text3 "Hi there!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Are you\n"
	text3 "giving it\n"
	text3 "your all?"
	tx_condition Func_10cfee
	tx_clear
	text3 "You must\n"
	text3 "be pretty\n"
	text3 "confident"
	tx_condition Func_10cfee
	tx_clear
	text3 "to try the\n"
	text3 "HARD path."
	tx_condition Func_10cfee
	tx_clear
	text3 "An enemy\n"
	text3 "even more\n"
	text3 "frightful"
	tx_condition Func_10cfee
	tx_clear
	text3 "than the\n"
	text3 "Elite Four\n"
	text3 "awaits."
	tx_condition Func_10cfee
	tx_clear
	text3 "But that\n"
	text3 "makes it\n"
	text3 "more fun."
	tx_condition Func_10cfee
	tx_clear
	text3 "Good luck!"
	tx_end

Text_16a64e:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "キキョウジム\n"
	text1 "ハヤト"
	tx_condition Func_10cfee
	tx_clear
	text1 "やあ!\n"
	text1 "まってたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "おれの\n"
	text1 "ほんとうの すごさ\n"
	text1 "みせてあげるよ"
	tx_end

.en
	text3 "Violet Gym\n"
	text3 "Falkner"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "waiting\n"
	text3 "for you."
	tx_condition Func_10cfee
	tx_clear
	text3 "I'll show\n"
	text3 "you my\n"
	text3 "might."
	tx_end

Text_16a6f5:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...ちくしょう\n"
	text1 "まけたよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "もっと おのれを\n"
	text1 "きたえなおさないと\n"
	text1 "..."
	tx_end

.en
	text3 "...Dang.\n"
	text3 "I lost."
	tx_condition Func_10cfee
	tx_clear
	text3 "If I don't\n"
	text3 "train\n"
	text3 "more..."
	tx_end

Text_16a76d:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ヒワダジム\n"
	text1 "ツクシ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ぼくも かなり\n"
	text1 "けんきゅう したから\n"
	text1 "まけないよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "さあ!\n"
	text1 "はじめようか"
	tx_end

.en
	text3 "Azalea Gym\n"
	text3 "Bugsy"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "studying,\n"
	text3 "too,"
	tx_condition Func_10cfee
	tx_clear
	text3 "so I won't\n"
	text3 "lose."
	tx_condition Func_10cfee
	tx_clear
	text3 "Well,\n"
	text3 "let's\n"
	text3 "begin."
	tx_end

Text_16a825:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うわ すごい!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ぼくも もっともっと\n"
	text1 "けんきゅうしなくちゃ\n"
	text1 "いけないね"
	tx_end

.en
	text3 "Amazing!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I have to\n"
	text3 "train even\n"
	text3 "more!"
	tx_end

Text_16a894:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "コガネジム\n"
	text1 "アカネ"
	tx_condition Func_10cfee
	tx_clear
	text1 "はーい!\n"
	text1 "まってたんよ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "しのごの いわずに\n"
	text1 "しょうぶするで!"
	tx_end

.en
	text3 "Goldenrod\n"
	text3 "Gym\n"
	text3 "Whitney"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hey! You\n"
	text3 "kept me\n"
	text3 "waiting!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Don't\n"
	text3 "complain!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Let's\n"
	text3 "battle!"
	tx_end

Text_16a947:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うう..."
	tx_condition Func_10cfee
	tx_clear
	text1 "...うわーん!!\n"
	text1 "ひどいよ ひどいよ!\n"
	text1 "むきになんないでよ!"
	tx_end

.en
	text3 "Ugh...\n"
	text3 "Why? Why?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Don't be\n"
	text3 "so hard\n"
	text3 "on me!"
	tx_end

Text_16a9be:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "エンジュジム\n"
	text1 "マツバ"
	tx_condition Func_10cfee
	tx_clear
	text1 "よく きたね"
	tx_condition Func_10cfee
	tx_clear
	text1 "しゅぎょうの\n"
	text1 "せいかを ためすとき\n"
	text1 "が きたよ"
	tx_end

.en
	text3 "Ecruteak\n"
	text3 "Gym\n"
	text3 "Morty"
	tx_condition Func_10cfee
	tx_clear
	text3 "Welcome."
	tx_condition Func_10cfee
	tx_clear
	text3 "The time\n"
	text3 "to test\n"
	text3 "the fruits"
	tx_condition Func_10cfee
	tx_clear
	text3 "of my\n"
	text3 "training\n"
	text3 "has come."
	tx_end

Text_16aa74:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "まだ たりないのか"
	tx_condition Func_10cfee
	tx_clear
	text1 "この しょうぶ これ\n"
	text1 "からの しゅぎょうに\n"
	text1 "やくだてるよ"
	tx_end

.en
	text3 "It's still\n"
	text3 "not\n"
	text3 "enough."
	tx_condition Func_10cfee
	tx_clear
	text3 "This battle\n"
	text3 "will help\n"
	text3 "me with"
	tx_condition Func_10cfee
	tx_clear
	text3 "my future\n"
	text3 "training."
	tx_end

Text_16ab13:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "アサギジム\n"
	text1 "ミカン"
	tx_condition Func_10cfee
	tx_clear
	text1 "...こんにちは"
	tx_condition Func_10cfee
	tx_clear
	text1 "...あ あのう\n"
	text1 "はじめますね"
	tx_end

.en
	text3 "Olivine\n"
	text3 "Gym\n"
	text3 "Jasmine"
	tx_condition Func_10cfee
	tx_clear
	text3 "Um...\n"
	text3 "...hello."
	tx_condition Func_10cfee
	tx_clear
	text3 "Shall we\n"
	text3 "start?"
	tx_end

Text_16ab9d:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...あなたの\n"
	text1 "ほうが うわてみたい"
	tx_condition Func_10cfee
	tx_clear
	text1 "あ あの...\n"
	text1 "あんまり うまく\n"
	text1 "いえないけど..."
	tx_condition Func_10cfee
	tx_clear
	text1 "このさきもがんばって\n"
	text1 "くださいね"
	tx_end

.en
	text3 "...You're\n"
	text3 "better\n"
	text3 "than me."
	tx_condition Func_10cfee
	tx_clear
	text3 "This is\n"
	text3 "hard to\n"
	text3 "say..."
	tx_condition Func_10cfee
	tx_clear
	text3 "But...\n"
	text3 "Good luck."
	tx_end

Text_16ac55:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "タンバジム\n"
	text1 "シジマ"
	tx_condition Func_10cfee
	tx_clear
	text1 "おっしゃー!\n"
	text1 "よく きたーっ!!"
	tx_condition Func_10cfee
	tx_clear
	text1 "いっとくが わしは\n"
	text1 "かなり つよいぞ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "では しょうぶだー!"
	tx_end

.en
	text3 "Cianwood\n"
	text3 "Gym\n"
	text3 "Chuck"
	tx_condition Func_10cfee
	tx_clear
	text3 "Hi there!\n"
	text3 "Come on\n"
	text3 "in!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've gotta\n"
	text3 "tell ya,\n"
	text3 "I'm really"
	tx_condition Func_10cfee
	tx_clear
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "Now get\n"
	text3 "ready to\n"
	text3 "fight!"
	tx_end

Text_16ad3c:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "おりょ?"
	tx_condition Func_10cfee
	tx_clear
	text1 "だめかー!\n"
	text1 "また 24じかん\n"
	text1 "とっくんだーっ!!"
	tx_end

.en
	text3 "Huh?\n"
	text3 "I lost?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Back to\n"
	text3 "training\n"
	text3 "24-7!"
	tx_end

Text_16ada6:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "チョウジジム\n"
	text1 "ヤナギ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ここらで つらさを\n"
	text1 "あじわってみるのも\n"
	text1 "よかろう"
	tx_condition Func_10cfee
	tx_clear
	text1 "わたしの\n"
	text1 "しんの じつりょく\n"
	text1 "みせてやろうかの"
	tx_end

.en
	text3 "Mahogany\n"
	text3 "Gym\n"
	text3 "Pryce"
	tx_condition Func_10cfee
	tx_clear
	text3 "Prepare to\n"
	text3 "taste\n"
	text3 "defeat."
	tx_condition Func_10cfee
	tx_clear
	text3 "I shall\n"
	text3 "prove my\n"
	text3 "skill."
	tx_end

Text_16ae5e:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "うんうん みごとな\n"
	text1 "たたかいっぷり"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみなら なにがあっ\n"
	text1 "ても のりこえて\n"
	text1 "いけるだろうよ"
	tx_end

.en
	text3 "Yes, yes...\n"
	text3 "Quite im-\n"
	text3 "pressive."
	tx_condition Func_10cfee
	tx_clear
	text3 "You can\n"
	text3 "overcome\n"
	text3 "anything."
	tx_end

Text_16aef1:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "フスベジム\n"
	text1 "イブキ"
	tx_condition Func_10cfee
	tx_clear
	text1 "やっと ここまで\n"
	text1 "きたわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "どれだけ じょうたつ\n"
	text1 "したかしら?"
	tx_condition Func_10cfee
	tx_clear
	text1 "この わたしが\n"
	text1 "たしかめさせて\n"
	text1 "もらうわ"
	tx_end

.en
	text3 "Blackthorn\n"
	text3 "Gym\n"
	text3 "Clair"
	tx_condition Func_10cfee
	tx_clear
	text3 "You've\n"
	text3 "finally\n"
	text3 "made it."
	tx_condition Func_10cfee
	tx_clear
	text3 "I wonder\n"
	text3 "if you've\n"
	text3 "improved."
	tx_condition Func_10cfee
	tx_clear
	text3 "I'll be the\n"
	text3 "one to\n"
	text3 "test you."
	tx_end

Text_16afdb:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "けっこう やるわね"
	tx_condition Func_10cfee
	tx_clear
	text1 "でも うえにはうえが\n"
	text1 "いるものよ..."
	tx_end

.en
	text3 "You're\n"
	text3 "pretty\n"
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "But there\n"
	text3 "are others\n"
	text3 "above you."
	tx_end

Text_16b055:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "イツキ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ボクは もっと\n"
	text1 "つよくなる!"
	tx_condition Func_10cfee
	tx_clear
	text1 "いま まけるわけには\n"
	text1 "いかない!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Will"
	tx_condition Func_10cfee
	tx_clear
	text3 "I have\n"
	text3 "become\n"
	text3 "stronger!"
	tx_condition Func_10cfee
	tx_clear
	text3 "There's no\n"
	text3 "way I'll\n"
	text3 "lose now!"
	tx_end

Text_16b0fa:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "...まいったよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "まけたから といって\n"
	text1 "ボクの やることは\n"
	text1 "かわらない"
	tx_condition Func_10cfee
	tx_clear
	text1 "ちょうてんに\n"
	text1 "たつため たたかい\n"
	text1 "つづけるだけ"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみは つぎにすすん\n"
	text1 "で ほんとうの \n"
	text1 "してんのうの こわさ"
	tx_condition Func_10cfee
	tx_clear
	text1 "たしかめるが いい!"
	tx_end

.en
	text3 "You got me.\n"
	text3 "But don't\n"
	text3 "think"
	tx_condition Func_10cfee
	tx_clear
	text3 "losing will\n"
	text3 "change my\n"
	text3 "ways."
	tx_condition Func_10cfee
	tx_clear
	text3 "To reach\n"
	text3 "the top,\n"
	text3 "you must"
	tx_condition Func_10cfee
	tx_clear
	text3 "continue\n"
	text3 "on to face\n"
	text3 "the true"
	tx_condition Func_10cfee
	tx_clear
	text3 "might of\n"
	text3 "the Elite\n"
	text3 "Four!"
	tx_end

Text_16b23a:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "キョウ"
	tx_condition Func_10cfee
	tx_clear
	text1 "ファ ファ ファ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "せっしゃの たたかい\n"
	text1 "かたは ひとすじなわ\n"
	text1 "では いかんぞ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "へんげんじざいの\n"
	text1 "あやしの わざ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "たっぷりと\n"
	text1 "あじわうが よい!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Koga"
	tx_condition Func_10cfee
	tx_clear
	text3 "Ha, ha, ha!\n"
	text3 "My skill\n"
	text3 "will be"
	tx_condition Func_10cfee
	tx_clear
	text3 "hard to\n"
	text3 "overcome!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Now you\n"
	text3 "shall see\n"
	text3 "my mystic"
	tx_condition Func_10cfee
	tx_clear
	text3 "puzzle\n"
	text3 "powers!"
	tx_end

Text_16b346:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "おお!\n"
	text1 "おぬし やりおるな!"
	tx_condition Func_10cfee
	tx_clear
	text1 "これで かなわぬなら\n"
	text1 "さらに しょうじん\n"
	text1 "するだけよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "おぬし!\n"
	text1 "つぎに すすみ\n"
	text1 "じぶんの じつりょく"
	tx_condition Func_10cfee
	tx_clear
	text1 "ためすがよい!"
	tx_end

.en
	text3 "You have\n"
	text3 "done well."
	tx_condition Func_10cfee
	tx_clear
	text3 "If I cannot\n"
	text3 "match you\n"
	text3 "now,"
	tx_condition Func_10cfee
	tx_clear
	text3 "I can only\n"
	text3 "train\n"
	text3 "further."
	tx_condition Func_10cfee
	tx_clear
	text3 "Continue\n"
	text3 "testing\n"
	text3 "your skill!"
	tx_end

Text_16b439:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "シバ"
	tx_condition Func_10cfee
	tx_clear
	text1 "げんかいまで きたえ\n"
	text1 "ている おれたちに\n"
	text1 "かなうと おもうか?"
	tx_condition Func_10cfee
	tx_clear
	text1 "ほう おそれは\n"
	text1 "なさそうだな\n"
	text1 "いい かおをしてる"
	tx_condition Func_10cfee
	tx_clear
	text1 "それでこそ\n"
	text1 "たたかうにふさわしい"
	tx_condition Func_10cfee
	tx_clear
	text1 "いくぞ!\n"
	text1 "ハイパー パワー\n"
	text1 "うけてみるが いい!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ウー! ハーッ!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Bruno"
	tx_condition Func_10cfee
	tx_clear
	text3 "Do you\n"
	text3 "think you\n"
	text3 "can match"
	tx_condition Func_10cfee
	tx_clear
	text3 "us?*We've\n"
	text3 "trained to\n"
	text3 "the limits!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I see\n"
	text3 "nothing to\n"
	text3 "fear from"
	tx_condition Func_10cfee
	tx_clear
	text3 "your face,\n"
	text3 "so let us\n"
	text3 "battle!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Feel my\n"
	text3 "incredible\n"
	text3 "power!"
	tx_condition Func_10cfee
	tx_clear
	text3 "Wah-hah!"
	tx_end

Text_16b5b9:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "どうした ことだ!\n"
	text1 "...おれたちが\n"
	text1 "まけるとは!"
	tx_condition Func_10cfee
	tx_clear
	text1 "まけた おれに\n"
	text1 "なにも いうしかくは\n"
	text1 "ない!"
	tx_condition Func_10cfee
	tx_clear
	text1 "つぎへ\n"
	text1 "すすむが いい!"
	tx_end

.en
	text3 "What\n"
	text3 "happened?\n"
	text3 "To think"
	tx_condition Func_10cfee
	tx_clear
	text3 "we could\n"
	text3 "lose...?!?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Say nothing\n"
	text3 "to me."
	tx_condition Func_10cfee
	tx_clear
	text3 "Continue\n"
	text3 "on!"
	tx_end

Text_16b67f:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "してんのう\n"
	text1 "カリン"
	tx_condition Func_10cfee
	tx_clear
	text1 "ふーん なかなか\n"
	text1 "おもしろそうね"
	tx_condition Func_10cfee
	tx_clear
	text1 "さいしょに\n"
	text1 "いっておくわ"
	tx_condition Func_10cfee
	tx_clear
	text1 "あたくしは\n"
	text1 "とーっても\n"
	text1 "つよいわよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "あなた あいてに\n"
	text1 "なるのかしら?"
	tx_condition Func_10cfee
	tx_clear
	text1 "がんばって あたくし\n"
	text1 "を たのしませて \n"
	text1 "ほしいものね"
	tx_condition Func_10cfee
	tx_clear
	text1 "じゃ はじめましょ!"
	tx_end

.en
	text3 "Elite Four\n"
	text3 "Karen"
	tx_condition Func_10cfee
	tx_clear
	text3 "Well, this\n"
	text3 "should be\n"
	text3 "pretty fun."
	tx_condition Func_10cfee
	tx_clear
	text3 "First, I'll\n"
	text3 "tell you\n"
	text3 "this..."
	tx_condition Func_10cfee
	tx_clear
	text3 "I'm verrry\n"
	text3 "good."
	tx_condition Func_10cfee
	tx_clear
	text3 "Will you\n"
	text3 "challenge\n"
	text3 "me?"
	tx_condition Func_10cfee
	tx_clear
	text3 "I hope\n"
	text3 "this will"
	tx_condition Func_10cfee
	tx_clear
	text3 "be a good\n"
	text3 "match."
	tx_condition Func_10cfee
	tx_clear
	text3 "Let's\n"
	text3 "begin!"
	tx_end

Text_16b804:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "ふーん やるじゃない\n"
	text1 "すてきよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "さきに すすみなさい\n"
	text1 "チャンピオンが\n"
	text1 "まってるわ"
	tx_end

.en
	text3 "Well, you\n"
	text3 "were good."
	tx_condition Func_10cfee
	tx_clear
	text3 "I like\n"
	text3 "that."
	tx_condition Func_10cfee
	tx_clear
	text3 "Go on\n"
	text3 "ahead."
	tx_condition Func_10cfee
	tx_clear
	text3 "The \n"
	text3 "champion\n"
	text3 "awaits."
	tx_end

Text_16b8a7:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "チャンピオン\n"
	text1 "ワタル"
	tx_condition Func_10cfee
	tx_clear
	text1 "まっていたよ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみの\n"
	text1 "じつりょくなら\n"
	text1 "いずれ ここまで.."
	tx_condition Func_10cfee
	tx_clear
	text1 "くることは\n"
	text1 "わかっていた"
	tx_condition Func_10cfee
	tx_clear
	text1 "なにも\n"
	text1 "いうことは ない!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ただ どちらが\n"
	text1 "つよいか たたかって\n"
	text1 "きめるだけ!"
	tx_condition Func_10cfee
	tx_clear
	text1 "ドラゴンつかい の\n"
	text1 "ワタル\n"
	text1 "いざ まいる!"
	tx_end

.en
	text3 "Champion\n"
	text3 "Lance"
	tx_condition Func_10cfee
	tx_clear
	text3 "I've been\n"
	text3 "waiting!"
	tx_condition Func_10cfee
	tx_clear
	text3 "I knew\n"
	text3 "one with\n"
	text3 "your skill"
	tx_condition Func_10cfee
	tx_clear
	text3 "would\n"
	text3 "eventually\n"
	text3 "reach me."
	tx_condition Func_10cfee
	tx_clear
	text3 "There is\n"
	text3 "nothing to\n"
	text3 "say!"
	tx_condition Func_10cfee
	tx_clear
	text3 "We must\n"
	text3 "battle to\n"
	text3 "determine"
	tx_condition Func_10cfee
	tx_clear
	text3 "who is\n"
	text3 "stronger!"
	tx_condition Func_10cfee
	tx_clear
	text3 "The dragon\n"
	text3 "master is\n"
	text3 "here!"
	tx_end

Text_16ba45:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "... おわった"
	tx_condition Func_10cfee
	tx_clear
	text1 "だけど ふしぎな\n"
	text1 "きぶんだよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "きっと まけた\n"
	text1 "くやしさより いい\n"
	text1 "しょうぶが できた"
	tx_condition Func_10cfee
	tx_clear
	text1 "よろこびのほうが\n"
	text1 "おおきいから かな"
	tx_condition Func_10cfee
	tx_clear
	text1 "... ふう"
	tx_condition Func_10cfee
	tx_clear
	text1 "つよくなったね\n"
	text1 "ほんとうに\n"
	text1 "つよくなったよ"
	tx_condition Func_10cfee
	tx_clear
	text1 "また いつか\n"
	text1 "たたかえる かな?"
	tx_condition Func_10cfee
	tx_clear
	text1 "おたがい もっと\n"
	text1 "つよく なって\n"
	text1 "また あおう..."
	tx_end

.en
	text3 "It's over."
	tx_condition Func_10cfee
	tx_clear
	text3 "But I feel\n"
	text3 "strange..."
	tx_condition Func_10cfee
	tx_clear
	text3 "I lost,\n"
	text3 "but the\n"
	text3 "battle was"
	tx_condition Func_10cfee
	tx_clear
	text3 "so good, I\n"
	text3 "don't feel\n"
	text3 "let down."
	tx_condition Func_10cfee
	tx_clear
	text3 "I am\n"
	text3 "actually\n"
	text3 "happy."
	tx_condition Func_10cfee
	tx_clear
	text3 "Hmm..."
	tx_condition Func_10cfee
	tx_clear
	text3 "You have\n"
	text3 "become\n"
	text3 "powerful."
	tx_condition Func_10cfee
	tx_clear
	text3 "Will we\n"
	text3 "battle\n"
	text3 "again?"
	tx_condition Func_10cfee
	tx_clear
	text3 "Let us\n"
	text3 "both\n"
	text3 "improve,"
	tx_condition Func_10cfee
	tx_clear
	text3 "then meet\n"
	text3 "again..."
	tx_end

Text_16bc25:
	tx_call TextSub_168000
	tx_lang_branch .jp, .en
.jp
	text1 "... おわった"
	tx_condition Func_10cfee
	tx_clear
	text1 "つよくなったね\n"
	text1 "... ...\n"
	text1 "... だけど..."
	tx_condition Func_10cfee
	tx_clear
	text1 "これが ほんとうの\n"
	text1 "きみの じつりょく\n"
	text1 "なのかい?"
	tx_condition Func_10cfee
	tx_clear
	text1 "いや ちがう"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみには きっと\n"
	text1 "なにかが たりないん\n"
	text1 "だとおもう"
	tx_condition Func_10cfee
	tx_clear
	text1 "それが\n"
	text1 "わかったとき"
	tx_condition Func_10cfee
	tx_clear
	text1 "きみは さらに\n"
	text1 "うえを めざす\n"
	text1 "ことになるだろう.."
	tx_end

.en
	text3 "It's over."
	tx_condition Func_10cfee
	tx_clear
	text3 "You've\n"
	text3 "become\n"
	text3 "powerful."
	tx_condition Func_10cfee
	tx_clear
	text3 "But is this\n"
	text3 "your true\n"
	text3 "ability?"
	tx_condition Func_10cfee
	tx_clear
	text3 "I think\n"
	text3 "not."
	tx_condition Func_10cfee
	tx_clear
	text3 "I feel you\n"
	text3 "are still\n"
	text3 "lacking."
	tx_condition Func_10cfee
	tx_clear
	text3 "Once you\n"
	text3 "improve,\n"
	text3 "you can"
	tx_condition Func_10cfee
	tx_clear
	text3 "climb even\n"
	text3 "higher..."
	tx_end
