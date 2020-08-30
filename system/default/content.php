<?php

//init require element on the content in section (object), rest part of section are include
require_once 'content/object/object.class.php';

$object = new ObjectContent($this->systemName(), $db, $this->currentLanguage, $this->admin, $this->setting);

$sectionData = $this->getSection($this->currentSection);

$label = $object->getAllLabel();

?>

<?php

    $object->display($sectionData['id'], $label['language']);

    echo '<div id="'.$this->currentSection.'" class="im-content '.$this->currentLanguage.'-content">';

        $class = ($sectionData['class'] === '' ? 'container' : $sectionData['class']);

        echo '<div class="im-top">';

            echo '<div class="'.$class.'">';

                $object->display($sectionData['id'], $label['logo'], 'begin');

                $object->display($sectionData['id'], $label['menu'], 'end');

            echo '</div>';

        echo '</div>';

        if($this->checkSection($this->currentSection, 'strona-glowna', true)) {

            echo '<div class="im-movie">';

                //Player with movie
                echo '<div class="container-fluid">';

                $object->display($sectionData['id'], $label['movie-text']);

                $object->display($sectionData['id'], $label['movie']);

                $object->display($sectionData['id'], $label['slider']);

                echo '</div>';

            echo '</div>';

        }else{

            //Parallax in another section than main, on the top
            $this->parallax();

            //Breadcrumb
            echo '<div class="container-fluid">';

            $object->display($sectionData['id'], $label['im-breadcrumb']);

            echo '</div>';

        }

        $object->display($sectionData['id'], $label['eu']);

            echo '<div class="'.$class.'">';

                echo '<div class="animated fadeInUp">';

                    $object->display($sectionData['id'], $label['prolog']);

                    $object->display($sectionData['id'], $label['box']);

                echo '</div>';

            echo '</div>';

            echo '<div class="'.$class.'">';

                echo '<div class="animated fadeInUp">';

                    $object->display($sectionData['id'], $label['content']);

                    $object->display($sectionData['id'], $label['file']);

                    $object->display($sectionData['id'], $label['image']);

                    $object->displayStatic($sectionData['id']);

                echo '</div>';

        echo '</div>';
    ?>

    <div class="im-footer">

        <div class="container-fluid">

            <?php $object->display($sectionData['id'], $label['map']); ?>

        </div>

        <div class="container-fluid">

            <?php $object->display($sectionData['id'], $label['company-image']); ?>

            <?php $object->display($sectionData['id'], $label['footer']); ?>

            <?php $object->display($sectionData['id'], $label['footer-logo']); ?>

        </div>

    </div>

<?php

echo '</div>';

if(!isset($session['cookie']))
    $object->display($sectionData['id'], $label['cookie']);

$currentLanguageDisplay = 'language-pl';
if($this->currentLanguage)
    $currentLanguageDisplay = 'language-'.$this->currentLanguage;

echo '<input type="hidden" id="'.$currentLanguageDisplay.'">';