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

    //Player with movie
    if($this->checkSection($this->currentSection, 'strona-glowna', true)) {

        $object->displayStatic($sectionData['id']);

    }

    echo '<div class="'.$class.'" id="'.$this->currentSection.'">';

        if($this->checkSection($this->currentSection, 'strona-glowna', false)) {

            $object->displayStatic($sectionData['id']);

        }

    echo '</div>';

?>

<div class="im-footer">
    <div class="container-fluid">

    </div>
</div>

<?php

//if(!isset($session['cookie']))
    //$object->display($sectionData['id'], $label['cookie']);