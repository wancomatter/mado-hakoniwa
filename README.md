#魔導の箱庭です<br>
#以下製作者一覧です<br>
・wancomatter  Twitter:@wancomatter<br>
・yuu50  			Twitter:@yuu500000<br>
・E3   				Twitter:@s10129<br>
<br>
#一部テクスチャをお借りさせて頂きました<br>
・Bakenekokan http://neko.moo.jp/BS/


## Java Edition 26.3 用ライブラリ

Minecraft Java Edition 26.3（Java 25）で、次の4フォルダーをワールドの `datapacks` に置いて起動する。StatusSystem は OhMyDat に依存する。MarkerMotion と player_motion は、player_motion 側に置いた補助ディメンション `neac:` と固定UUIDのMarkerを共有する。初回の導入では、補助ディメンションを読み込むためワールドまたはサーバーを再起動する。

| フォルダー | 取り込み元のコミット |
| --- | --- |
| `oh_my_dat` | [Ai-Akaishi/OhMyDat · `283c84d`](https://github.com/Ai-Akaishi/OhMyDat/commit/283c84d2d1e38b1b291149694040bcf66a3770a6) |
| `status_system` | [wancomatter/StatusSystem · `3e04359`](https://github.com/wancomatter/StatusSystem/commit/3e04359bddbedc42cd44f7bd9b9ddfc0be51135d) |
| `player_motion` | [nea-c/player_motion · `91bf900`](https://github.com/nea-c/player_motion/commit/91bf90093717726de38c817be93e9953d63d6b40) |
| `marker_motion` | [nea-c/MarkerMotion · `7459bf9`](https://github.com/nea-c/MarkerMotion/commit/7459bf9a26c07e79c7ee40d72b08db3dbf2aa381) |

各フォルダーに取り込み元の `LICENSE` を収録。MarkerMotion は重力やバウンドが必要な少数の飛翔体向けとし、ショットガンなど多数の弾を同時に飛ばす処理の採用対象から外す。

### 確認済み

公式26.3 JARのデータパック読み込み処理で4パックを同時に読み込んだ。全function 99本、代表引数を展開したマクロ10本、MarkerMotionのpredicate 100件、StatusSystemのルートテーブル1件を確認した。導入後のコードに対して、player_motionの上流静的テスト29件が通過した。

### 次回の実機確認

まず新規の隔離ワールドに組み込み `vanilla` と上記4パックを入れ、ライブラリの動作を確認する。`wnkm` と旧版の外部 `vanilla` はマップ本体の移植時に扱う。

1. 初回起動、`/reload`、再起動後に4パックが有効で、`neac:` の固定Markerと `status_system:` の固定防具立てが各1体あることを確認する。
2. OhMyDatで2体のストレージが分離することと、StatusSystemの基礎値・加算・乗算・期限切れが期待値と合うことを確認する。大きな値の乗算も試す。
3. 実クライアントからplayer_motionを呼び、向きと移動量、処理後のゲームモードを確認する。MarkerMotionは少数のMarkerで重力・壁衝突・バウンドと、両ライブラリを同時に使った際の動作を確認する。

マクロを使う既存処理の実行負荷と、飛翔体を同時に扱った際の負荷は実機で確認する。

## 26.3 本体の基盤

`equipment-ids.json` が装備IDと旧ルートテーブルの対応表。`minecraft:custom_data` の `wnkm.equipment` をゲーム内の判定に使う。専用の見た目がある装備では、同じIDを `minecraft:item_model` に指定し、リソースパックの `assets/wnkm/items/` に定義を置く。水刃の item modifier が両方の指定例。名前や見た目を変える場合も、ゲーム上同じ装備なら識別IDを引き継ぐ。

`wnkm:version` の `world` がワールドのデータ版、`wnkm.schema` がプレイヤーのデータ版。26.3移植初版の値は `1`。起動・reloadでワールドの版を確認し、プレイヤーは参加直後に個別初期化する。旧ワールドの移行では判定済みのマップ所有データと一時実体を回収する。版は初期化が済んだときに記録する。未対応の新しい版は初期化対象から外す。

試合で生成する実体には `wnkm.owned` と `wnkm.round` を付ける。OhMyDatの領域もその生成物専用に割り当てた場合は `wnkm.owns_oh_my_dat` を付ける。試合終了の入口は `wnkm:game/0.end`。個別の生成物を捨てる経路では `wnkm:entity/0.discard` を終端として呼ぶ。

### 26.3 の装備・試合

ロビーのインベントリでカテゴリを切り替え、個人のエンダーチェストから装備を取得する。共通IDのある218件から、旧ページで使用する装備を配る。弓やクロスボウは引き絞りや装填状態を標準のアイテム状態から描画する。旧スキルの分岐番号はゲーム処理用の `custom_data.LegacySkill` に保存する。`item_model` が描画を担当する。

試合は殲滅戦、TDM、1on1、ボスバトル、Waveを接続した。ボスバトルの選択肢はデトネイター、ダスク、リメア、くま。真紅の傷跡は旧版にあったステージと残機設定を使い、ハスク2体、ストレイ2体とハスク1体、ラヴェジャー1体とハスク2体の3ウェーブを順に出す。最後のウェーブを全滅させれば勝利し、出撃者が残機を使い切るか制限時間に達すると敗北する。敵の構成とHPは移植時に設定した初期値。

26.3用の関数・構造物は単数形のフォルダーにある。複数形のフォルダーには照合用の1.19.2ソースがある。26.3向けの配布にはリソースパックの同名ブランチも使う。

### 画面操作を含む確認

公式26.3の隔離サーバーで、装備218件の生成と共通ID、ボスバトル4組の召喚、真紅の傷跡の各ウェーブの生成・試合終了時の回収、殲滅戦・TDM・Wave・ボスバトルの開始時のモード、reload・再起動を確認した。

1. 隔離ワールドのクライアントにリソースパックを適用する。ロビーでカテゴリを切り替え、エンダーチェストから装備を取り出して戻す。装備コスト、説明文、アイコン、持ち方、弓とクロスボウの引き絞りを確認する。
2. 装備種別ごとに通常攻撃・右クリック・長押し・持ち替え・装填を試す。MP、クールダウン、敵味方判定、音、粒子、多数同時発射時の挙動を確認する。
3. 設定モニターと参加看板から試合に入り、殲滅戦・TDM・1on1の勝敗、ボス4組の行動と討伐、真紅の傷跡の進行・残機・勝敗を複数人で確認する。終了後はロビーへの復帰、次の試合の再開、画面上の残留を確認する。
