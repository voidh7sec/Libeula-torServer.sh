# Libélula Tor Server

## Description

Libélula  Tor Server is a lightweight bash script that automates the process of hosting websites as Tor hidden services.

## Features

· Automated Tor Configuration: Sets up Tor hidden services automatically
· Simple Setup: Interactive prompts for path and port
· Input Validation: Verifies directory existence and port availability
· User-Friendly: Straightforward command-line interface

## Prerequisites

· Tor installed and running
· Python 3
· Bash shell

## Installation

```bash
chmod +x libelula.sh
```

##Usage

```bash
./libelula.sh
```

## Follow the prompts:

· Site path: Directory containing your website files
· Port: Local port for the HTTP server

Example

```bash
./libelula.sh
[*] What is the site path:
/var/www/mysite
[*] What port do you want to run the service on:
8080
```

## What It Does

1. Configures Tor hidden service in ~/.tor/
2. Sets up port forwarding through Tor
3. Starts Python HTTP server
4. Hosts your site as a Tor hidden service

## Accessing Your Site

· Find your .onion address in the hostname file within your site directory
· Access via Tor Browser using the generated onion address

## Notes

· Ensure Tor service is running
· Python HTTP server is for development/testing
· Comply with Tor network guidelines and local laws

## File Structure

```
libelula.sh          # Main script
~/.tor/torrc         # Generated Tor configuration
[your-site-path]/    # Your website files
[your-site-path]/hostname  # Generated onion address
```
