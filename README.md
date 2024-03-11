# kubernetes-from-first-principles

## What is this?

Some notes, instructions, and perhaps a proper writeup (no promises) of some sessions I'm running at [SEEK](https://seek.com)
in March of 2024.

The purpose of these sessions is to dispel some of the magic and make Kubernetes easier to understand and reason about.

Kubernetes is a complex beast!
But it's merely complex - it's not magic.
Most aspects of Kubernetes that look and feel like magic are just complicated arrangements of fundamental building 
blocks of distributed systems.

The intended audience for these sessions are people who have used Kubernetes a little bit or a lot, but who want to 
understand more about how Kubernetes works under-the-hood.
To gain this knowledge of Kubernetes' inner workings, we'll take the approach of picking seemingly-simple parts of 
interacting with Kubernetes, and then unpacking how they work at a lower level.

If you're totally new to Kubernetes, this is probably not for you.
I'd recommend some Kubernetes 101 type material first.
Come back to this once you've used `kubectl` a little and you're curious as to what is happening behind the scenes.

## Setup

The exercises in this repo require `kubectl` and `kind`.
Optionally `krew` can be used to manage `kubectl` plugins.

Install these tools from official sources, or you can use the Nix flake in the root of this repo.