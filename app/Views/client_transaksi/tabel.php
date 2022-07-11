<?= $this->extend('template/administrator') ?>



<?= $this->section('content') ?>
<div class="main-content">
  <style type="text/css">
    #tabel-data tr th {
      white-space: nowrap;
    }

    #tabel-data tr td {
      white-space: nowrap;
    }
  </style>
  <div class="breadcrumb main-content d-flex justify-content-between">
    <div class="d-inline-block">
      <h1>Layanan</h1>
      <ul>
        <li>Tabel Transaksi</li>
      </ul>
    </div>
    <div class="d-inline-block">
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Form Input Data</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <!-- form -->

              <!-- endorm -->
            </div>

          </div>
        </div>
      </div>
    </div>
    <!-- <a href="" class="btn btn-success" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i> Tambah</a> -->
  </div>
</div>
<div class="separator-breadcrumb border-top"></div>
<div class="row">
  <div class="card col-md-12">
    <div class="card-body">
      <table id="tabel-data" class="table table-bordered table-inverse table-hover table-responsive">
        <thead>
          <tr>
            <th>Client nama</th>
            <th>tanggal transaksi</th>
            <th>tanggal transaksi berahir</th>
            <th>create Time</th>
            <th>create by</th>
            <th>update Time</th>
            <th>update by</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>

        </tbody>
      </table>
    </div>
  </div>
</div>

<!--begin::Modal-->
<div class="modal fade" id="modal_delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Peringatan !</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <form id="form-delete" method="post">
        <div class="modal-body">
          <div id="modal-body-delete">

          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-google">Hapus</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!--end::Modal-->


<script type="text/javascript">
  // var jQuery = $.noConflict(true);
  jQuery(document).ready(function() {

    table = jQuery('#tabel-data').dataTable({
      ajax: {
        url: "/ClientTransaksi/dt_tabel",

        dataSrc: '',
        "type": "POST"

      },
      processing: true,
      serverSide: false,
      columns: [{
          data: 'client_nama'
        }, {
          data: 'client_transaksi_date_start'
        }, {
          data: 'client_transaksi_date_finish'
        },
        {
          data: 'created_time'
        },
        {
          data: 'created_by'
        },
        {
          data: 'updated_time'
        },
        {
          data: 'updated_by'
        },
        {
          data: 'status'
        },

      ],
      'autoWidth': false,

    });

    jQuery('#form-delete').submit(function(event) {
      jQuery.LoadingOverlay("show");
      jQuery.post('/client/', jQuery(this).serialize(), function(response, textStatus, xhr) {
        jQuery.LoadingOverlay("hide");
        if (response.status == true) {
          toastr.success(response.msg);
          setTimeout(function() {
            window.location.reload();
          }, 2000);
        } else {
          toastr.error(response.msg);
        }
      }, "json");
      return false;
    });
  });

  function dt_delete(t) {
    jQuery.get('http://192.168.3.4/datalayanan/core/users_modal/modal_delete', {
      'client_id': jQuery(t).attr('target-id')
    }).done(function(data) {
      jQuery('#modal-body-delete').html(data);
      jQuery('#modal_delete').modal('show');
    });
  }
</script>
<?= $this->endSection() ?>