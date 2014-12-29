<?php

/**
 * Implements hook_form_FORM_ID_alter().
 */
function harmony_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = st('Harmony');
}
