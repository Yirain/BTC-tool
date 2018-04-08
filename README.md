#   Bitcoin Tool Kit- A Combination of Bitcoin Tools

##  Dependence

* OpenSSL-1.0.2g
* Libcurl-7.47.0
* cJSON-1.7.5

##  Enviroment

* Linux Kernel 4.10.0-28-generic_x64
* GCC 5.4.0

## Features

### Current

* Generate bitcoin address.
* BaseX Encode/Decode
* Check address validation and get the hash160 value
* Check private key validaion and get the address

### Future

* Create and sign the raw transactions.
* Broadcast the signed transaction.
* Get the balance and UTXO on an address.

##  Usage

	sudo apt install libssl-dev
    sudo apt install libcurl4-openssl-dev

	make
    
	./btctool [-sctk] [-a <address>] [-g <privkey>] [--base6e -S <string>]
              [--base6d -L <string>] [--base58e -F <string>] [--base58d -W <string>]
              [--base58checke -B <string>] [--base58checkd -T <string>]
	
	Options:
    -s                           Get a standard mainnet address.
    -c                           Get a compressed mainnet address.
    -t                           Get a standard testnet address.
    -k                           Get a compressed testnet address.
    -a <address>                 Check addess validaion and get the hash160 value.
    -g <privkey>                 Check private key validaion and get the address.
                                 Supported format: [B6] [WIF] [Hexadecimal]
    --base6e  -S <string>             Base6  encode
    --base6d  -L <string>             Base6  decode
    --base58e -F <string>             Base58 encode
    --base58d -W <string>             Base58 decode
    --base58checke -B <string>        Base58Check encode
    --base58checkd -T <string>        Base58Check decode
	
	/* String arguments with single quotes are recommended. */

## License

MIT License

>  Copyright (c) 2018 Yirain Suen
>
>  Permission is hereby granted, free of charge, to any person obtaining a copy
>  of this software and associated documentation files (the "Software"), to deal
>  in the Software without restriction, including without limitation the rights
>  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>  copies of the Software, and to permit persons to whom the Software is
>  furnished to do so, subject to the following conditions:
>
>  The above copyright notice and this permission notice shall be included in
>  all copies or substantial portions of the Software.
>
>  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>  THE SOFTWARE.
