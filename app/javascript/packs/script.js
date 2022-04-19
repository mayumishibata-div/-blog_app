window.addEventListener('load', function(){

	const alertButton = document.getElementsByClassName('alert');
	 console.log("alertButton")
// 	// 上記で取得したすべての要素に対してクリックイベントを適用
	for(let i = 0; i < alertButton.length; i++) {
    	alertButton[i].addEventListener('click', function(){
    	 const result = window.confirm('本当に削除してもいいですか?');
      	  if( result ) {
            console.log('削除されました');
          }
          else {
            return
            console.log('キャンセルがクリックされました');
          }
      })
   } 
})