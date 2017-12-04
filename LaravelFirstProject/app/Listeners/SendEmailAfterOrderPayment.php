<?php

namespace App\Listeners;

use App\Events\OrderPayment;
use App\Mail\MailOrderShipped;
use Mail;

class SendEmailAfterOrderPayment
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  OrderPayment $event
     * @return void
     */
    public function handle(OrderPayment $event)
    {
        Debugbar:
        logger("SendEmailAfterOrderPayment__construct:event", [$event]);
        //send email
        Mail::to('doanthe.anh172tb@gmail.com')
            ->send(new MailOrderShipped($event->order));
    }
}
