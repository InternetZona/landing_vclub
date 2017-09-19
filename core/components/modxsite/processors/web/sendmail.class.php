<?php

class modSiteWebSendmailProcessor extends modProcessor {

    public function initialize() {

        $this->setDefaultProperties(array(
            'subject'   => 'Заказ карты «Без ограничений».'
        ));

        return parent::initialize();
    }

    public function process() {

        $message = $this->modx->getChunk('email.tpl', $this->getProperties());

        $this->modx->getService('mail', 'mail.modPHPMailer');
        $this->modx->mail->set(modMail::MAIL_BODY, $message);
        $this->modx->mail->set(modMail::MAIL_FROM, 'no-replay@'.$_SERVER['HTTP_HOST']);
        $this->modx->mail->set(modMail::MAIL_FROM_NAME, $this->modx->getOption('site_name'));
        $this->modx->mail->set(modMail::MAIL_SUBJECT, $this->getProperty('subject'));
        
        $emails = explode(',', $this->modx->getOption('emailsender', false));
		foreach ($emails as $email){
			$this->modx->mail->address('to',$email);
		}


        $this->modx->mail->setHTML(true);
        if (!$this->modx->mail->send()) {
            $this->modx->log(modX::LOG_LEVEL_ERROR,'An error occurred while trying to send the email: '.$this->modx->mail->mailer->ErrorInfo);
            return $this->failure('Ошибка отправки.');
        }
        $this->modx->mail->reset();

        return $this->success('Заказ успешно отправлен.');

    }

}
return 'modSiteWebSendmailProcessor';