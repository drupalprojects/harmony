<?php

/**
 * Implements hook_form_FORM_ID_alter().
 */
function harmony_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the Harmony!
  $form['site_information']['site_name']['#default_value'] = st('Harmony');

  // Yoinked from Panopoly distro :3
  // Hide some messages from various modules that are just too chatty.
  drupal_get_messages('status');
  drupal_get_messages('warning');

  // Define a default email address if we can guess a valid one.
  if (valid_email_address('admin@' . $_SERVER['HTTP_HOST'])) {
    $form['site_information']['site_mail']['#default_value'] = 'admin@' . $_SERVER['HTTP_HOST'];
    $form['admin_account']['account']['mail']['#default_value'] = 'admin@' . $_SERVER['HTTP_HOST'];
  }
}
