/**
 * 
 */
let $list = $('.list');
let $edit = $('.edit');
let $delete = $('.delete');

let notificationNumber = $list.data('notificationnumber');

$list.on('click', ()=> {
	window.location.href = '/notification/notificationListOk.nc';
});

$edit.on('click', ()=> {
	window.location.href = '/notification/notificationUpdate.nc?notificationNumber=' + notificationNumber;
});

$delete.on('click', ()=> {
	window.location.href = '/notification/notificationDeleteOk.nc?notificationNumber=' + notificationNumber;
});


