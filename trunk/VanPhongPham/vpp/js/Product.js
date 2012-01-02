/**
 * getInputForm - lay ve form hien tai
 */
function getInputForm() {
	var frm = document.inputform;
	if (frm == undefined)
		frm = document.mainform;
	return frm;
}

function confirmtor_save(){
	var answer = confirm('Bạn đã chắc chắn thay đổi thông tin chưa?');

	var frm = getInputForm();
	if(answer){
		frm.confirmToSave.value = 1;
		//gan gia tri cho hidden - cancel
	}else{
		//gan gia tri cho hidden - ok
		frm.confirmToSave.value = 0;
	}
}
