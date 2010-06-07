; -*- Mode: Lisp; Package: editor -*-

#|
= natural-compare - xyzzy �Ŏ��R���\�[�g

* Authror: MIYAMUKO Katsuyuki ((<URL:mailto:miyamuko@gmail.com>))
* URL: ((<URL:http://miyamuko.s56.xrea.com/xyzzy/natural-compare/intro.htm>))
* Version: $Id: natural-compare.l,v 1.3 2005/07/09 20:00:20 miyamuko Exp $

== ����

xyzzy �Ŏ��R���\�[�g���s�����߂̃��C�u�����ł��B

�� natural-compare �̓��C�u�����ł��胆�[�U�����ڗ��p������̂ł͂���܂���B

== �g�p��

* �A�Ԃ��̃t�@�C�����̃\�[�g

    (sort '("rfc822.txt" "rfc1.txt" "rfc2086.txt") #'natural<)
    ("rfc1.txt" "rfc822.txt" "rfc2086.txt")

* �o�[�W�����ԍ��̃\�[�g

    (sort '("1.3" "1.1" "1.02" "1.010" "1.002" "1.001") #'natural<)
    ("1.001" "1.002" "1.010" "1.02" "1.1" "1.3")

* IP �A�h���X�̃\�[�g

    (sort '("20.30.40.50" "100.1.1.1" "192.168.10.10" "192.168.2.20") 'natural<)
    ("20.30.40.50" "100.1.1.1" "192.168.2.20" "192.168.10.10")

== �C���X�g�[��

((<NetInstaller|URL:http://www.mirai.ne.jp/~gyo/xyzzy/ni.html>)) �ŃC���X�g�[�������ꍇ��
3 �ȍ~�� OK �ł��B

(1) �A�[�J�C�u���_�E�����[�h���܂��B

    ((<URL:http://miyamuko.s56.xrea.com/xyzzy/archives/natural-compare.zip>))

(2) �A�[�J�C�u��W�J���āA$XYZZY/site-lisp �z���Ƀt�@�C�����R�s�[���܂��B

(3) ~/.xyzzy �܂��� $XYZZY/site-lisp/siteinit.l �Ɉȉ��̃R�[�h��ǉ����܂��B

        ;; natural-compare
        (require "natural-compare")

(4) �ݒ�𔽉f������ɂ� xyzzy ���ċN�����Ă��������B

    ��siteinit.l �ɋL�q�����ꍇ�ɂ͍ă_���v���K�v�ł��B


== ���t�@�����X

--- natural-compare

    natural-compare a b &optional case-fold => -1 or 0 or 1

    ���R���ɔ�r���� a �� b �������Ȃ� 0�A
    a ���������Ȃ畉����
    a �� b ���傫���Ȃ琳����Ԃ��܂��B

--- natural=

    Syntax:

        natural= a b => t or nil

    �󔒕����𖳎����Ĕ�r���܂��B
    �啶���������̈Ⴂ�͋�ʂ��܂��B

    Examples:

        (natural= "rfc1.txt" "rfc1 .txt")
        t
        (natural= "rfc1.txt" "rfc01.txt")
        nil
        (natural= "rfc1.txt" "RFC1.txt")
        nil

--- natural<

    Syntax:

        natural< a b => t or nil

    ���R���ɔ�r���� a ���������ꍇ�� t ��Ԃ��܂��B
    �啶���������̈Ⴂ�͋�ʂ��܂��B

    Examples:

        (natural< "rfc1.txt" "rfc1 .txt")
        nil
        (natural< "rfc1.txt" "RFC1.txt")
        nil
        (natural< "rfc1.txt" "rfc01.txt")
        nil
        (natural< "rfc01.txt" "rfc1.txt")
        t
        (natural< "rfc01.txt" "rfc02.txt")
        t

--- natural>

    Syntax:

        natural> a b => t or nil

    ���R���ɔ�r���� a ���傫���ꍇ�� t ��Ԃ��܂��B
    �啶���������̈Ⴂ�͋�ʂ��܂��B

    Examples:

        (natural> "rfc1.txt" "rfc1 .txt")
        nil
        (natural> "rfc1.txt" "rfc01.txt")
        t
        (natural> "rfc01.txt" "rfc1.txt")
        nil
        (natural> "rfc01.txt" "rfc02.txt")
        nil

--- natural-equal

    Syntax:

        natural-equal a b => t or nil

    ((< natural= >)) �̑啶������������ʂ��Ȃ���

--- natural-lessp

    Syntax:

        natural-lessp a b => t or nil

    ((< natural< >)) �̑啶������������ʂ��Ȃ���

--- natural-greaterp

    Syntax:

        natural-greaterp a b => t or nil

    ((< natural> >)) �̑啶������������ʂ��Ȃ���


== ���ꂩ���邩������Ȃ�����

* x2-g8 < x2-y08 < x2-y7 < x8-y8 �ƂȂ�̂��ǂ��ɂ�����B
  leading zeros �𖳎�����I�v�V����������΂����̂��Ȃ��B


== �֘A���邩������Ȃ��y�[�W

: Natural Order Numerical Sorting
    ((<URL:http://www.naturalordersort.org/>))

: Natural Order String Comparison
    ((<URL:http://sourcefrog.net/projects/natsort/>))


== ���C�Z���X

natural-compare �͏C�� BSD ���C�Z���X�Ɋ�Â��ė��p�\�ł��B

  Copyright (C) 2005 MIYAMUKO Katsuyuki. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:

  1 Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer as the first lines
    of this file unmodified.

  2 Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

  THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
  OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  SUCH DAMAGE.
|#

(provide "natural-compare")
(in-package "editor")

(export '(natural-compare
          natural=
          natural<
          natural>
          natural-equal
          natural-lessp
          natural-greaterp))

(defun natural-compare (a b &key case-fold)
  (labels ((split (str)
             (let (r)
               (while (and (< 0 (length str))
                           (string-match "^\\([^0-9]*\\)\\([0-9]*\\)\\(.*\\)" str))
                 (push (cons (match-string 1) (match-string 2)) r)
                 (setf str (match-string 3)))
               (reverse r)))
           (strip (str)
             (substitute-string str "[ \t]+" "")))
    (when (string= a b)
      (return-from natural-compare 0))
    (setf a (strip a)
          b (strip b))
    (when case-fold
      (setf a (string-downcase a)
            b (string-downcase b)))
    (when (string= a b)
      (return-from natural-compare 0))
    (natural-compare0 (split a) (split b))))

(defun natural-compare0 (alist blist)
  (when (and (null alist) (null blist))
    (return-from natural-compare0 0))
  (case (natural-compare-test (car alist) (car blist))
    (0
     (case (if (and (< 0 (length (cdar alist)))
                    (< 0 (length (cdar blist)))
                    (not (char= (char (cdar alist) 0) #\0))
                    (not (char= (char (cdar blist) 0) #\0)))
               (natural-compare-test (car alist) (car blist)
                                     :test< #'< :test> #'>
                                     :key #'(lambda (s)
                                              (and s (parse-integer (cdr s) :junk-allowed t))))
             (natural-compare-test (car alist) (car blist) :key #'cdr))
       (0 (natural-compare0 (cdr alist) (cdr blist)))
       (-1 -1)
       (1 1)))
    (-1 -1)
    (1 1)))

(defun natural-compare-test (apair bpair &key (key #'car) (test< #'string<) (test> #'string>))
  (let ((a (funcall key apair))
        (b (funcall key bpair)))
    (cond ((and (null a) (null b))
           0)
          ((and (null a) (not (null b)))
           -1)
          ((and (not (null a)) (null b))
           1)
          ((funcall test< a b) -1)
          ((funcall test> a b) 1)
          (t 0))))

(defun natural= (a b)
  (= (natural-compare a b) 0))

(defun natural< (a b)
  (< (natural-compare a b) 0))

(defun natural> (a b)
  (> (natural-compare a b) 0))

(defun natural-equal (a b)
  (= (natural-compare a b :case-fold t) 0))

(defun natural-lessp (a b)
  (< (natural-compare a b :case-fold t) 0))

(defun natural-greaterp (a b)
  (> (natural-compare a b :case-fold t) 0))

;;
;; $Id: natural-compare.l,v 1.3 2005/07/09 20:00:20 miyamuko Exp $
;;