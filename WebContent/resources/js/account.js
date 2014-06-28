function confirmDelete(url){
	if(confirm("Bạn chắc chắn muốn xóa") == true){
		window.location.href = url;
	}
	else
		false;
}