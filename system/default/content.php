<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin, $this->setting);

$sectionData = $this->getSection($this->currentSection);

$sectionDataAll = $this->getSection();

$label = $object->getAllLabel();

?>

<?php

    $class = ($sectionData['class'] === '' ? 'container' : $sectionData['class']);

    echo '<div class="im-top">';

        echo '<div class="'.$class.'">';

            $object->display($sectionData['id'], $label['logo'], 'begin');

            $object->display($sectionData['id'], $label['menu'], 'end');

        echo '</div>';

        echo '<div class="submenu-data">';

            echo '<div class="container-fluid">';

                foreach ($sectionDataAll as $sectionDataOne) {

                    if($sectionDataOne['parent'] > 0)
                        continue;

                    $object->display($sectionDataOne['id'], $label['submenu'], 'parent,submenu');

                }

            echo '</div>';

        echo '</div>';

echo '</div>';

    echo '<div class="im-movie">';

        //Player with movie
        echo '<div class="container-fluid">';

            $object->display($sectionData['id'], $label['movie-text']);

            $object->display($sectionData['id'], $label['movie']);

        echo '</div>';

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

    </div>
</div>

<?php

if(!isset($session['cookie']))
    $object->display($sectionData['id'], $label['cookie']);