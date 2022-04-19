window.addEventListener('load', function(){

  // document.addEventListener('DOMContentLoaded', function(){
// 	function alertmouseover(){
// 		// クリックした際に実行する処理を記述
// 	}

// 	// 引数に指定したclassの値をもつ要素をすべて取得
	const alertButton = document.getElementsByClassName('alert');
	 console.log("alertButton")
// 	// 上記で取得したすべての要素に対してクリックイベントを適用
	for(let i = 0; i < alertButton.length; i++) {
    // 	alertButton[i].addEventListener('click', alertclick, false);
    	alertButton[i].addEventListener('click', function(){
    	 // window.confirm("本当に削除してもいいですか");
    	 const result = window.confirm('本当に削除してもいいですか?');
      	 if( result ) {
          console.log('OKがクリックされました');
         }
        else {
          console.log('キャンセルがクリックされました');
         }
    	  
// 	    })
    })
  }
})