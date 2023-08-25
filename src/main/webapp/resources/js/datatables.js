let dataTable;
let dataTableIsInitialized = false;

const dataTableOptions = {
    //scrollX: "2000px",
    responsive:true,
    lengthMenu: [5, 10, 15, 20],
    columnDefs: [
        { className: "centered", targets: [0, 1, 2, 3, 4, 5, 6] },
        { orderable: false, targets: [7] },
        { searchable: false, targets: [7] },
        { responsivePriority: 1, targets: 1 },
        { responsivePriority: 2, targets: 2 },
        { responsivePriority: 3, targets: -1 },
        { responsivePriority: 4, targets: 3 },
        { responsivePriority: 5, targets: 4 },
        { responsivePriority: 6, targets: 5 },
        { responsivePriority: 7, targets: 0 }
    ],
    pageLength: 3,
    destroy: true,
    language: {
        lengthMenu: "Mostrar _MENU_ registros por página",
        zeroRecords: "Ningún paciente encontrado",
        info: "Mostrando de _START_ a _END_ de un total de _TOTAL_ registros",
        infoEmpty: "Ningún paciente encontrado",
        infoFiltered: "(filtrados desde _MAX_ registros totales)",
        search: "Buscar:",
        loadingRecords: "Cargando...",
        paginate: {
            first: "Primero",
            last: "Último",
            next: "Siguiente",
            previous: "Anterior"
        }
    }
};
const initDataTable = () => {
	if (dataTableIsInitialized) {
		dataTable.destroy();
	}
	dataTable = $("#t_pacientes").DataTable(dataTableOptions);
	dataTableIsInitialized = true;
};
window.addEventListener("load", ()=>{
	initDataTable();
});