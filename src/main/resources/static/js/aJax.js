/**
 * 
 */

postAjax = (url, data) => {
	let r_data = "";
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'post',
		async: false,
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			r_data = result;
		}
	}) 
	return r_data;
}

updateAjax = (url, data) => {
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'put',
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			if (result == 200) {
				return result;
			}
		}
	}) 
}

delAjax = (url, data) => {
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'delete',
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			alert('삭제했습니다.');
			location.reload();
		}
	}) 
}