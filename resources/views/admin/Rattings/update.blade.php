@extends('admin.master')

@section('content')
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Categories</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                @include('admin.layouts.alert')
                <div class="row">
                    <div class="col-md-6">
                        <form action="admin/Ratting/updateRattings/{{ $Ratting->id }}" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="box box-danger">
                                <div class="box-header">
                                    <h3 class="box-title">Update form data element</h3>
                                </div>
                                <div class="box-body">
                                    <!-- Date mm/dd/yyyy -->
                                    <div class="form-group">
                                        <label for="">Star <span style="color:red;">*</span></label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-edit fa-pen-alt"></i>
                                            </div>
                                            <SELECT name="Ratting" class="form-control">
                                                <?php for($i = 1; $i<=5; $i++){ ?>
                                                <OPTION <?php if($Ratting->Ratting == $i){echo "selected";}else{} ?> value="<?php echo $i; ?>"> <?php echo $i; ?> star </OPTION>
                                                <?php } ?>
                                            </SELECT>
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->

                                    <!-- phone mask -->
                                    <div class="form-group">
                                        <label>Info of ratting <span style="color:red;">*</span></label>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-align-left"></i>
                                            </div>
                                            <textarea name="Info" class="form-control ckeditor" id="" cols="30" rows="10">{{ $Ratting->Info }}</textarea>
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->

                                    <!-- phone mask -->
                                    <div class="form-group">
                                        <label>Chose a product <span style="color:red;">*</span></label>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-compress"></i>
                                            </div>
                                            <SELECT class="form-control" name="idProduct">
                                                @foreach($Product as $product)
                                                <OPTION <?php if ($product->id == $Ratting->idProduct) {echo "selected";}else{} ?> value="{{ $product->id }}">{{ $product->NameProduct }}</OPTION>
                                                @endforeach
                                            </SELECT>
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->


                                    <!-- IP mask -->
                                    <div class="form-group">
                                        <label>Submit data:</label>

                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-paper-plane"></i>
                                            </div>
                                            <input type="submit" class="form-control" value="Submit">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                    <!-- /.form group -->

                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </form>
                    </div>

                    <div class="col-md-6">
                        <p>
                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolore quibusdam odit culpa aspernatur ex voluptas soluta doloremque exercitationem deserunt dicta vel nemo, et enim fugit expedita ullam laudantium minus quam.
                        </p>

                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam eveniet maxime neque accusantium perferendis repudiandae magni sint amet tempora repellendus recusandae eligendi temporibus cupiditate atque, porro consectetur voluptas cum incidunt.
                        </p>

                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum ipsa repellat accusamus nemo fuga, neque asperiores consectetur tempora necessitatibus minima rem aspernatur. Beatae eius aliquam maxime distinctio id reprehenderit repudiandae.
                        </p>

                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus nemo ea maiores saepe quo minima, culpa sint incidunt perspiciatis omnis dolore accusamus adipisci quam architecto pariatur natus! Necessitatibus, quibusdam exercitationem!
                        </p>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta adipisci provident suscipit veritatis distinctio, aliquam qui, quod minima eveniet voluptates vero esse. Nam, officiis! Unde ipsum architecto culpa corrupti vitae!
                        </p>
                    </div>
                </div>
            </div>
            <!-- /.col (right) -->
        </div>
        <!-- /.row -->
        <!-- /.content -->
        </div>
    </section>
@endsection
