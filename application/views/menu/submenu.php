           <!-- Begin Page Content -->
           <div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


<div class="row">
    <div class="col-lg">
    <?= form_error('title', '<div claas="alert alert-danger" role="alert">', '</div>'); ?>
    <?= form_error('menu_id', '<div claas="alert alert-danger" role="alert">', '</div>'); ?>
    <?= form_error('url', '<div claas="alert alert-danger" role="alert">', '</div>'); ?>
    <?= form_error('icon', '<div claas="alert alert-danger" role="alert">', '</div>'); ?>
           
           <?=$this->session->flashdata('message'); ?>


           <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newMenuModal">Add New Submenu</a>

           <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Menu</th>
                    <th scope="col">Url</th>
                    <th scope="col">Icon</th>
                    <th scope="col">Active</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; ?>
                <?php foreach ($subMenu as $sm) : ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td><?= $sm['title']; ?></td>
                            <td><?= $sm['menu']; ?></td>
                            <td><?= $sm['url']; ?></td>
                            <td><?= $sm['icon']; ?></td>
                            <td><?= $sm['is_active']; ?></td>
                            <td>
                                <a href="" class="badge badge-warning" data-toggle="modal" data-target="#modalEditSubMenu<?= $sm['id']; ?>">edit</a>
                                <a href="<?= base_url('menu/deleteSubMenu/') ?><?= $sm['id']; ?>" id="delete" name="delete" class="badge badge-danger">delete</a>
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

<!-- Modal Edit submenu -->
<?php foreach ($subMenu as $row) : ?>
    <div class="modal fade" id="modalEditSubMenu<?= $row['id'] ?>">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="menu-label">Edit Sub Menu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('menu/editSubMenu'); ?>" method="post">
                    <input type="hidden" readonly value="<?= $row['id']; ?>" name="submenu_id" class="form-control">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="title" name="title" placeholder="Submenu title" value="<?= $row['title'] ?>">
                        </div>
                        <div class="form-group">
                            <select name="menu_id" id="menu_id" class="form-control">
                                <option value="<?= $row['menu_id']; ?>"><?= $row['menu']  ?></option>
                                <?php foreach ($menu as $m) : ?>
                                    <option value="<?= $m['id']; ?>"><?= $m['menu']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="url" name="url" placeholder="Submenu url" value="<?= $row['url'] ?>">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="icon" name="icon" placeholder="Submenu icon" value="<?= $row['icon'] ?>">
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="1" name="is_active" id="is_active" checked>
                                <label class="form-check-label" for="is_active">
                                    Active?
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Edit</button>
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
        <form action="<?= base_url('menu/submenu')?>" method="post">
        <div class="modal-body">
        <div class="form-group">
        <input type="text" class="form-control" id="title" name="title" placeholder="Submenu Name">        
        </div>
        <div class="form-group">
            <select name="menu_id" id="menu_id" class="form-control">
                <option value="">Select Menu</option>
                <?php foreach($menu as $m) :?>
                <option value="<?= $m['id']?>"><?= $m['menu']?></option>
        <?php endforeach;?>
            </select>   
        </div>
        <div class="form-group">
        <input type="text" class="form-control" id="url" name="url" placeholder="Submenu Url">        
        </div>
        <div class="form-group">
        <input type="text" class="form-control" id="icon" name="icon" placeholder="Submenu Icon">        
        </div>
        <div class="form-group">
        <div class="form-checkbox ml-3">
                <input class="form-check-input" type="checkbox" value="1" name="is_active" id="is_active" checked>
                <label class="form-check-label" for="is_active">
                    Active?
                </label>
           </div>        
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
