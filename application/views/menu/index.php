           <!-- Begin Page Content -->
           <div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


<div class="row">
    <div class="col-lg-6">
    <?= form_error('menu', '<div claas="alert alert-danger" role="alert">', '</div>'); ?>
           
           <?=$this->session->flashdata('message'); ?>


           <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newMenuModal">Add New Menu</a>

           <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Menu</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; ?>
                <?php foreach ($menu as $m) : ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td><?= $m['menu']; ?></td>
                            <td>
                                <a href="" class="badge badge-warning" data-toggle="modal" data-target="#modaledit<?= $m['id']; ?>">edit</a>
                                <a href="<?= base_url('menu/delete/') ?><?= $m['id']; ?>" id="delete" name="delete" class="badge badge-danger">delete</a>
                            </td>
                        </tr>
                        <?php $i++; ?>
                    <?php endforeach; ?>

            </tbody>
        </table>


    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!--Modal Edit-->
<?php $i = 0;
foreach ($menu as $m) : $i++; ?>
    <div class="modal fade" id="modaledit<?= $m['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="modaledit<?= $m['id'] ?>" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modaledit">Edit Menu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('menu/edit/') . $m['id'] ?>" method="post">
                    <div class="modal-body">
                        <input type="hidden" readonly value="<?= $m['id']; ?>" name="id" class="form-control">
                        <div class="form-group">
                            <input type="text" class="form-control" id="menu" name="menu" value="<?= $m['menu']; ?>">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>


<!-- MODAL -->
<div class="modal fade" id="newMenuModal" tabindex="-1" role="dialog" aria-labelledby="newmodalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="mobal-title" id="newModalLabel">Add New Menu</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
           </button>
        </div>
        <form action="<?= base_url('menu')?>" method="post">
        <div class="modal-body">
        <div class="form-group">
        <input type="text" class="form-control" id="menu" name="menu" placeholder="Submenu Name">        
        </div>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" 
        data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>
        </form>
        </div>
        </div>
        </div>
