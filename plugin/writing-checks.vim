function! InsertCheckbox(perspective)
	let perspective = "[ ] " . a:perspective
	execute ":normal o" . perspective
endfunction

function! InsertChapter(title)
	let title = "### " . a:title
	execute ":normal o" . title
	execute ":normal o"
endfunction

function! DrawLine()
	execute ":normal o" . "---"
endfunction

function! InsertWritingChecks()
	call DrawLine()
	call InsertChapter("読みやすい順序")
	call InsertCheckbox("1. 主題を予告している")
	call InsertCheckbox("2. 目的・目標を明確にしている")
	call InsertCheckbox("3. 結論をまぎれなく述べている")
	call InsertCheckbox("4. 今後の方向を示している")
	execute ":normal o"
	call InsertChapter("表題")
	call InsertCheckbox("読み手の注意を惹くものになっている")
	call InsertCheckbox("最小限の用語に絞って対象と目的を予告している")
	execute ":normal o"
	call InsertChapter("目次")
	call InsertCheckbox("目次で文章の地図を示している")
	call InsertCheckbox("途中に現在位置を確認できる情報を入れている")
	execute ":normal o"
	call InsertChapter("明快に言い切るべきこと")
	call InsertCheckbox("現段階でわかったこと")
	call InsertCheckbox("考察できること")
	call InsertCheckbox("今後進む方向")
	execute ":normal o"
	call InsertChapter("進め方")
	call InsertCheckbox("読者と目的が明確である")
	call InsertCheckbox("仮設を立てて目標文を規定し、これと対比して経過や成果を自己評価しながら進めている")
	call InsertCheckbox("「今からあなたが書こうとしている文章は、どんな文章ですか？」という問いに簡単に答えられる")
	call InsertCheckbox("アイデアの段階、構成の段階、文章にした段階でフィードバックを受けている")
	execute ":normal o"
	call InsertChapter("内容")
	call InsertCheckbox("提案の目的と要件を述べている")
	call InsertCheckbox("「問題点」があれば「対策案」を添えるというように、今後の方向を組み合わせた「結果」の報告となっている")
	call InsertCheckbox("新しい知見が結論に記載されていて、そのあと今後の方針が書かれている")
	call InsertCheckbox("要約が、読むかどうかの判断材料を提供している")
	call InsertCheckbox("論題文(例:ステップモーターの駆動原理を説明する)が最初にあり、読み手がこの段落の概略を予測できる")
	call InsertCheckbox("「目標文」は作業の到達点の姿を示しており、定量的に測れるものである")
	call InsertCheckbox("反論を予測して列挙し、これに対し提案の妥当性を論証している")
	call InsertCheckbox("要点->詳細の順番に説明している")
	call InsertCheckbox("提案が、ベンダがやりたいこと・できることではなく、クライアントが何をしたいかで語られている")
	execute ":normal o"
	call InsertChapter("表現の統一")
	call InsertCheckbox("体言止め")
	call InsertCheckbox("階層の異なる用語の並列(日本人と猫->犬と猫)")
	call InsertCheckbox("一文章・一主題")
	call InsertCheckbox("一段落・一論題")
	call InsertCheckbox("一文・一論意")
	call InsertCheckbox("一語・一意")
	call InsertCheckbox("並列型の書き方が、列挙したものが同格であり、記述文が列挙順と全く同じである")
	call InsertCheckbox("列記する文や句の表現が統一されている")
	execute ":normal o"
	call InsertChapter("書き方")
	call InsertCheckbox("長い修飾語句を先に述べ、短い方を受ける語に近づけて書いている")
	call InsertCheckbox("論理上の重要性が最も強い修飾語を述語の近くに置いている")
	call InsertCheckbox("否定文は結果に結びつく情報を与えないため、肯定文となっている(例:このドアからは入れません->左のドアからお入りください)")
	call InsertCheckbox("「に」が行動または動作の到達点を表すために使用されている")
	call InsertCheckbox("「へ」が行動または動作の方向を表すために使用されている")
	call InsertCheckbox("比喩が適切に使われている(例:非常に精巧なマシーン->時計のように精巧なマシーン)")
	call InsertCheckbox("抽象的な表現ではなく、具体的な事実を書いている(例:いい会社->5年間、社員が一人も辞めていない会社)")
	call InsertCheckbox("二重表現に気をつける(例:各エリアごとに->各エリアに/エリアごとに)")
	call InsertCheckbox("「なります」を、物体や物事が変化する「〜に成る」という意味以外に使用していない(例:帰社は16時になります->帰社は16時でございます)")
	call DrawLine()
	execute ":normal o"
endfunction

command! InsertWritingChecks call InsertWritingChecks()
