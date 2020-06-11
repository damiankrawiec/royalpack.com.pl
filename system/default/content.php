<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin);

$sectionData = $this->getSection($this->currentSection);

$label = $object->getAllLabel();

?>

<?php

    $class = ($sectionData['class'] === '' ? 'container' : $sectionData['class']);

    echo '<div class="im-top">';

        echo '<div class="'.$class.'">';

            $object->display($sectionData['id'], $label['logo'], 'begin');

            $object->display($sectionData['id'], $label['menu'], 'end');

        echo '</div>';

    echo '</div>';

    echo '<div class="im-movie">';

        //Player with movie
        echo '<div class="container-fluid">';

            $object->display($sectionData['id'], $label['movie']);

        echo '</div>';

    echo '</div>';

    echo '<div class="'.$class.'" id="'.$this->currentSection.'">';

        $object->displayStatic($sectionData['id']);

    echo '</div>';

?>

<div class="im-footer">
    <div class="container-fluid">

    </div>
</div>

<?php

//if(!isset($session['cookie']))
    //$object->display($sectionData['id'], $label['cookie']);