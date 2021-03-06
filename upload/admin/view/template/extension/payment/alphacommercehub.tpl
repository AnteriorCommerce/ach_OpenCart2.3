<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-pp-std-uk" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if (isset($error['error_warning'])) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error['error_warning']; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-pp-std-uk" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
            <li><a href="#tab-status" data-toggle="tab"><?php echo $tab_order_status; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
				<div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                <div class="col-sm-10">
                  <select name="alphacommercehub_status" id="input-status" class="form-control">
                    <?php if ($alphacommercehub_status) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="entry-email"><?php echo $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="alphacommercehub_email" value="<?php echo $alphacommercehub_email; ?>" placeholder="<?php echo $entry_email; ?>" id="entry-email" class="form-control"/>
                  <?php if ($error_email) { ?>
                  <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              
				<div class="form-group required">
                <label class="col-sm-2 control-label" for="entry-url"><?php echo $entry_url; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="alphacommercehub_url" value="<?php echo $alphacommercehub_url; ?>" placeholder="<?php echo $entry_url; ?>" id="entry-url" class="form-control"/>
                <?php if ($error_url) { ?>
                  <div class="text-danger"><?php echo $error_url; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="entry-user"><?php echo $entry_user; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="alphacommercehub_user" value="<?php echo $alphacommercehub_user; ?>" placeholder="<?php echo $entry_user; ?>" id="entry-user" class="form-control"/>
                 <?php if ($error_user) { ?>
                  <div class="text-danger"><?php echo $error_user; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-debug"><span data-toggle="tooltip" title="<?php echo $help_debug; ?>"><?php echo $entry_debug; ?></span></label>
                <div class="col-sm-10">
                  <select name="alphacommercehub_debug" id="input-debug" class="form-control">
                    <?php if ($alphacommercehub_debug) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
          
              
              <div class="form-group">
                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_mode; ?></label>
                <div class="col-sm-10">
                  <select name="alphacommercehub_mode" id="input-status" class="form-control">
                    <?php if ($alphacommercehub_mode) { ?>
                    <option value="1" selected="selected"><?php echo 'UAT'; ?></option>
                    <option value="0"><?php echo 'Production'; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo 'UAT'; ?></option>
                    <option value="0" selected="selected"><?php echo 'Production'; ?></option>
                    <?php } ?>
                  </select>
                </div>
              </div>
             
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
