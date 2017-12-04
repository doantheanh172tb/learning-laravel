<?php

namespace App\Listeners;

use App\Events\OrderPayment;
use App\Mail\OrderShipped;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

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
     * @param  OrderPayment  $event
     * @return void
     */
    public function handle(OrderPayment $event)
    {
        //send email
        Mail::to('doantheanh172tb@gmail.com')
            ->send(new OrderShipped());
    }
}
