<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin, $this->setting);

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

        //Generate submenu for...
        $submenuArray = array('o-nas', 'oferta', 'technologia');

        echo '<div class="submenu-data im-hide">';

        foreach ($submenuArray as $sa) {

            echo '<div class="'.$sa.'">';

                echo '<div class="container-fluid">';

                    $object->display($this->getSection($sa, 'id'), $label['submenu'], 'parent,submenu');

                echo '</div>';

            echo '</div>';

        }

        echo '</div>';

    echo '</div>';

    echo '<div class="im-movie">';

        //Player with movie
        echo '<div class="container-fluid">';

            $object->display($sectionData['id'], $label['movie-text']);

            $object->display($sectionData['id'], $label['movie']);

        echo '</div>';

    echo '</div>';

    //Breadcrumb
    echo '<div class="container-fluid">';

        $object->display($sectionData['id'], $label['im-breadcrumb']);

    echo '</div>';

    echo '<div class="'.$class.'" id="'.$this->currentSection.'">';

        $object->display($sectionData['id'], $label['box']);

        $object->display($sectionData['id'], $label['content']);

        $object->displayStatic($sectionData['id']);

    echo '</div>';

?>

<div class="im-footer">
    <div class="container-fluid">

        <?php $object->display($sectionData['id'], $label['company-image']); ?>

        <?php $object->display($sectionData['id'], $label['footer']); ?>

        <?php $object->display($sectionData['id'], $label['footer-logo']); ?>

    </div>
</div>

<?php

if(!isset($session['cookie']))
    $object->display($sectionData['id'], $label['cookie']);