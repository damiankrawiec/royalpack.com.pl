<?php
if(isset($eventData) and is_array($eventData) and count($eventData) > 0) {

    echo '<a href="#" class="btn btn-secondary show-next add-new" id="add-new:slide">'.$translation['button']['add'].' '.$icon['button']['add'].'</a>';

    echo '<div class="add-new im-hide bg-light">';

    echo '<form method="post" class="add"'.(isset($eventData['field']['url']) ? 'enctype="multipart/form-data"' : '').'>';

        $editorDisplay = false;
        foreach($eventData['field'] as $i => $field) {

            echo '<div class="form-group">';

            require 'php/script/field-option.php';

                echo '<label for="'.$i.'">'.$field['name'].'</label>';

                if($field['type'] == 'text')


            if($field['type'] == 'text') {

                $size = ' size';
                if($table == 'im_translation' or $table == 'im_form')
                    $size = '';

                echo '<input type="text" name="form_'.$i.'" class="form-control'.$size . $require . '" id="'.$i.'" placeholder="'.$translation['edit'][$i].'" size="' . (isset($field['size']) ? $field['size'] : 0) . '" value="">';

                if($table != 'im_translation' and $table != 'im_form')
                    echo  $translation['edit']['left-char'].': <span class="badge badge-info">-</span>';

            }

                if(stristr($field['type'], 'textarea')) {

                    $editorDisplayNow = '';
                    if(stristr($field['type'], ':editor') and !$editorDisplay) {

                        $editorDisplayNow = ' editor';

                        $editorDisplay = true;
                    }

                    echo '<textarea name="form_' . $i . '" class="form-control'.$require.$editorDisplayNow. '" rows="3" id="' . $i . '" placeholder="' . $translation['edit'][$i] . '"></textarea>';

                }

                if($field['type'] == 'image' or $field['type'] == 'file' or $field['type'] == 'movie')
                    require_once 'php/script/files.php';

                require 'php/script/select-event.php';

            echo '</div>';

        }

        if(isset($eventData['field_supplement'])) {

            $fieldSupplement = '';

            if($eventData['field_supplement']['checkbox']) {

                echo '<label for="checkbox">'.$eventData['field_supplement']['checkbox']['name'].'</label>';

                echo '<input type="checkbox" name="field_supplement" value="'.$addition->arrayJson($eventData['field_supplement']['checkbox']).'" id="checkbox">';

            }

        }

        //All event need table
        echo '<input type="hidden" name="event_table" value="'.$addition->arrayJson($eventData['table_add']).'">';

        if(isset($eventData['supplement']))
            echo '<input type="hidden" name="event_supplement" value="'.$addition->arrayJson($eventData['supplement']).'">';

        echo '<input type="hidden" name="event" value="add"> ';

        echo '<input type="hidden" name="transaction" value="'.$addition->transaction().'">';

        echo '<input type="hidden" name="save_back" value="true" disabled>';

    echo '</form>';

    require_once 'php/script/icon-editor.php';

    echo '<button class="btn btn-success submit validation-run" id="add">' . $translation['button']['add'] .'</button>';

    echo '<button class="btn btn-primary submit validation-run save-back ml-1" id="add">' . $translation['button']['add-stay'] .'</button>';

    echo '<button class="btn btn-danger ml-1" id="add-cancel">' . $translation['button']['cancel'] .' '.$icon['button']['close'].'</button>';

    echo '</div>';

}